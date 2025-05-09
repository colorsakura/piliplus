import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/im/interfaces/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/im/type.pb.dart';
import 'package:PiliPlus/grpc/grpc_repo.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' show PbMap;
import 'package:uuid/uuid.dart';

class ImGrpc {
  static Future sendMsg({
    required int senderUid,
    required int receiverId,
    required String content,
    MsgType msgType = MsgType.EN_MSG_TYPE_TEXT,
  }) {
    final devId = const Uuid().v4();
    return GrpcRepo.request(
      GrpcUrl.sendMsg,
      ReqSendMsg(
        msg: Msg(
          senderUid: Int64(senderUid),
          receiverType: 1,
          receiverId: Int64(receiverId),
          msgType: msgType.value,
          content: content,
          timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000),
          msgStatus: 0,
          newFaceVersion: 1,
        ),
        devId: devId,
      ),
      RspSendMsg.fromBuffer,
    );
  }

  static Future shareList({int size = 10}) {
    return GrpcRepo.request(
      GrpcUrl.shareList,
      ReqShareList(size: size),
      RspShareList.fromBuffer,
    );
  }

  static Future<LoadingState<SessionMainReply>> sessionMain({
    PbMap<int, Offset>? offset,
  }) async {
    final res = await GrpcRepo.request(
      GrpcUrl.sessionMain,
      SessionMainReq(
        paginationParams: PaginationParams(offsets: offset),
      ),
      SessionMainReply.fromBuffer,
    );
    if (res['status']) {
      return LoadingState.success(res['data']);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future<LoadingState<SessionSecondaryReply>> sessionSecondary({
    PbMap<int, Offset>? offset,
    SessionPageType? pageType,
  }) async {
    final res = await GrpcRepo.request(
      GrpcUrl.sessionSecondary,
      SessionSecondaryReq(
        paginationParams: PaginationParams(offsets: offset),
        pageType: pageType,
      ),
      SessionSecondaryReply.fromBuffer,
    );
    if (res['status']) {
      return LoadingState.success(res['data']);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future clearUnread({
    SessionPageType? pageType,
    SessionId? sessionId,
  }) {
    return GrpcRepo.request(
      GrpcUrl.clearUnread,
      ClearUnreadReq(
        pageType: pageType,
        sessionId: sessionId,
      ),
      ClearUnreadReply.fromBuffer,
    );
  }

  static Future sessionUpdate({
    SessionPageType? pageType,
    SessionId? sessionId,
  }) {
    return GrpcRepo.request(
      GrpcUrl.sessionUpdate,
      SessionUpdateReq(
        pageType: pageType,
        sessionId: sessionId,
      ),
      SessionUpdateReply.fromBuffer,
    );
  }

  static Future pinSession({
    SessionId? sessionId,
    Int64? topTimeMicros,
  }) {
    return GrpcRepo.request(
      GrpcUrl.pinSession,
      PinSessionReq(
        sessionId: sessionId,
        topTimeMicros: topTimeMicros,
      ),
      PinSessionReply.fromBuffer,
    );
  }

  static Future unpinSession({
    SessionId? sessionId,
  }) {
    return GrpcRepo.request(
      GrpcUrl.unpinSession,
      UnPinSessionReq(
        sessionId: sessionId,
      ),
      UnPinSessionReply.fromBuffer,
    );
  }

  static Future deleteSessionList({
    SessionPageType? pageType,
  }) {
    return GrpcRepo.request(
      GrpcUrl.deleteSessionList,
      DeleteSessionListReq(
        pageType: pageType,
      ),
      DeleteSessionListReply.fromBuffer,
    );
  }
}
