import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/http/msg.dart';

import '../../../models/msg/msgfeed_reply_me.dart';

class ReplyMeController extends CommonController {
  int cursor = -1;
  int cursorTime = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    MsgFeedReplyMe data = response.response;
    if (data.cursor?.isEnd == true || data.items.isNullOrEmpty) {
      isEnd = true;
    }
    cursor = data.cursor?.id ?? -1;
    cursorTime = data.cursor?.time ?? -1;
    if (currentPage != 1 && loadingState.value is Success) {
      data.items ??= <ReplyMeItems>[];
      data.items!.insert(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.items);
    return true;
  }

  @override
  Future onRefresh() {
    cursor = -1;
    cursorTime = -1;
    return super.onRefresh();
  }

  @override
  Future<LoadingState> customGetData() =>
      MsgHttp.msgFeedReplyMe(cursor: cursor, cursorTime: cursorTime);
}
