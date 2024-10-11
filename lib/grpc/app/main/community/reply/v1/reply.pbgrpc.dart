//
//  Generated code. Do not modify.
//  source: bilibili/main/community/reply/v1/reply.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'reply.pb.dart' as $0;

export 'reply.pb.dart';

@$pb.GrpcServiceName('bilibili.main.community.reply.v1.Reply')
class ReplyClient extends $grpc.Client {
  static final _$mainList = $grpc.ClientMethod<$0.MainListReq, $0.MainListReply>(
      '/bilibili.main.community.reply.v1.Reply/MainList',
      ($0.MainListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MainListReply.fromBuffer(value));
  static final _$detailList = $grpc.ClientMethod<$0.DetailListReq, $0.DetailListReply>(
      '/bilibili.main.community.reply.v1.Reply/DetailList',
      ($0.DetailListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DetailListReply.fromBuffer(value));
  static final _$dialogList = $grpc.ClientMethod<$0.DialogListReq, $0.DialogListReply>(
      '/bilibili.main.community.reply.v1.Reply/DialogList',
      ($0.DialogListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DialogListReply.fromBuffer(value));
  static final _$previewList = $grpc.ClientMethod<$0.PreviewListReq, $0.PreviewListReply>(
      '/bilibili.main.community.reply.v1.Reply/PreviewList',
      ($0.PreviewListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PreviewListReply.fromBuffer(value));
  static final _$searchItemPreHook = $grpc.ClientMethod<$0.SearchItemPreHookReq, $0.SearchItemPreHookReply>(
      '/bilibili.main.community.reply.v1.Reply/SearchItemPreHook',
      ($0.SearchItemPreHookReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchItemPreHookReply.fromBuffer(value));
  static final _$searchItem = $grpc.ClientMethod<$0.SearchItemReq, $0.SearchItemReply>(
      '/bilibili.main.community.reply.v1.Reply/SearchItem',
      ($0.SearchItemReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchItemReply.fromBuffer(value));
  static final _$atSearch = $grpc.ClientMethod<$0.AtSearchReq, $0.AtSearchReply>(
      '/bilibili.main.community.reply.v1.Reply/AtSearch',
      ($0.AtSearchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AtSearchReply.fromBuffer(value));
  static final _$replyInfo = $grpc.ClientMethod<$0.ReplyInfoReq, $0.ReplyInfoReply>(
      '/bilibili.main.community.reply.v1.Reply/ReplyInfo',
      ($0.ReplyInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReplyInfoReply.fromBuffer(value));
  static final _$userCallback = $grpc.ClientMethod<$0.UserCallbackReq, $0.UserCallbackReply>(
      '/bilibili.main.community.reply.v1.Reply/UserCallback',
      ($0.UserCallbackReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserCallbackReply.fromBuffer(value));
  static final _$shareRepliesInfo = $grpc.ClientMethod<$0.ShareRepliesInfoReq, $0.ShareRepliesInfoResp>(
      '/bilibili.main.community.reply.v1.Reply/ShareRepliesInfo',
      ($0.ShareRepliesInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ShareRepliesInfoResp.fromBuffer(value));
  static final _$suggestEmotes = $grpc.ClientMethod<$0.SuggestEmotesReq, $0.SuggestEmotesResp>(
      '/bilibili.main.community.reply.v1.Reply/SuggestEmotes',
      ($0.SuggestEmotesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SuggestEmotesResp.fromBuffer(value));

  ReplyClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MainListReply> mainList($0.MainListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mainList, request, options: options);
  }

  $grpc.ResponseFuture<$0.DetailListReply> detailList($0.DetailListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$detailList, request, options: options);
  }

  $grpc.ResponseFuture<$0.DialogListReply> dialogList($0.DialogListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dialogList, request, options: options);
  }

  $grpc.ResponseFuture<$0.PreviewListReply> previewList($0.PreviewListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$previewList, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchItemPreHookReply> searchItemPreHook($0.SearchItemPreHookReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchItemPreHook, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchItemReply> searchItem($0.SearchItemReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.AtSearchReply> atSearch($0.AtSearchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$atSearch, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReplyInfoReply> replyInfo($0.ReplyInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$replyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCallbackReply> userCallback($0.UserCallbackReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userCallback, request, options: options);
  }

  $grpc.ResponseFuture<$0.ShareRepliesInfoResp> shareRepliesInfo($0.ShareRepliesInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$shareRepliesInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.SuggestEmotesResp> suggestEmotes($0.SuggestEmotesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$suggestEmotes, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.main.community.reply.v1.Reply')
abstract class ReplyServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.main.community.reply.v1.Reply';

  ReplyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MainListReq, $0.MainListReply>(
        'MainList',
        mainList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MainListReq.fromBuffer(value),
        ($0.MainListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DetailListReq, $0.DetailListReply>(
        'DetailList',
        detailList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DetailListReq.fromBuffer(value),
        ($0.DetailListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DialogListReq, $0.DialogListReply>(
        'DialogList',
        dialogList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DialogListReq.fromBuffer(value),
        ($0.DialogListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PreviewListReq, $0.PreviewListReply>(
        'PreviewList',
        previewList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PreviewListReq.fromBuffer(value),
        ($0.PreviewListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchItemPreHookReq, $0.SearchItemPreHookReply>(
        'SearchItemPreHook',
        searchItemPreHook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchItemPreHookReq.fromBuffer(value),
        ($0.SearchItemPreHookReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchItemReq, $0.SearchItemReply>(
        'SearchItem',
        searchItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchItemReq.fromBuffer(value),
        ($0.SearchItemReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AtSearchReq, $0.AtSearchReply>(
        'AtSearch',
        atSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AtSearchReq.fromBuffer(value),
        ($0.AtSearchReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReplyInfoReq, $0.ReplyInfoReply>(
        'ReplyInfo',
        replyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReplyInfoReq.fromBuffer(value),
        ($0.ReplyInfoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserCallbackReq, $0.UserCallbackReply>(
        'UserCallback',
        userCallback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserCallbackReq.fromBuffer(value),
        ($0.UserCallbackReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ShareRepliesInfoReq, $0.ShareRepliesInfoResp>(
        'ShareRepliesInfo',
        shareRepliesInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ShareRepliesInfoReq.fromBuffer(value),
        ($0.ShareRepliesInfoResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SuggestEmotesReq, $0.SuggestEmotesResp>(
        'SuggestEmotes',
        suggestEmotes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SuggestEmotesReq.fromBuffer(value),
        ($0.SuggestEmotesResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.MainListReply> mainList_Pre($grpc.ServiceCall call, $async.Future<$0.MainListReq> request) async {
    return mainList(call, await request);
  }

  $async.Future<$0.DetailListReply> detailList_Pre($grpc.ServiceCall call, $async.Future<$0.DetailListReq> request) async {
    return detailList(call, await request);
  }

  $async.Future<$0.DialogListReply> dialogList_Pre($grpc.ServiceCall call, $async.Future<$0.DialogListReq> request) async {
    return dialogList(call, await request);
  }

  $async.Future<$0.PreviewListReply> previewList_Pre($grpc.ServiceCall call, $async.Future<$0.PreviewListReq> request) async {
    return previewList(call, await request);
  }

  $async.Future<$0.SearchItemPreHookReply> searchItemPreHook_Pre($grpc.ServiceCall call, $async.Future<$0.SearchItemPreHookReq> request) async {
    return searchItemPreHook(call, await request);
  }

  $async.Future<$0.SearchItemReply> searchItem_Pre($grpc.ServiceCall call, $async.Future<$0.SearchItemReq> request) async {
    return searchItem(call, await request);
  }

  $async.Future<$0.AtSearchReply> atSearch_Pre($grpc.ServiceCall call, $async.Future<$0.AtSearchReq> request) async {
    return atSearch(call, await request);
  }

  $async.Future<$0.ReplyInfoReply> replyInfo_Pre($grpc.ServiceCall call, $async.Future<$0.ReplyInfoReq> request) async {
    return replyInfo(call, await request);
  }

  $async.Future<$0.UserCallbackReply> userCallback_Pre($grpc.ServiceCall call, $async.Future<$0.UserCallbackReq> request) async {
    return userCallback(call, await request);
  }

  $async.Future<$0.ShareRepliesInfoResp> shareRepliesInfo_Pre($grpc.ServiceCall call, $async.Future<$0.ShareRepliesInfoReq> request) async {
    return shareRepliesInfo(call, await request);
  }

  $async.Future<$0.SuggestEmotesResp> suggestEmotes_Pre($grpc.ServiceCall call, $async.Future<$0.SuggestEmotesReq> request) async {
    return suggestEmotes(call, await request);
  }

  $async.Future<$0.MainListReply> mainList($grpc.ServiceCall call, $0.MainListReq request);
  $async.Future<$0.DetailListReply> detailList($grpc.ServiceCall call, $0.DetailListReq request);
  $async.Future<$0.DialogListReply> dialogList($grpc.ServiceCall call, $0.DialogListReq request);
  $async.Future<$0.PreviewListReply> previewList($grpc.ServiceCall call, $0.PreviewListReq request);
  $async.Future<$0.SearchItemPreHookReply> searchItemPreHook($grpc.ServiceCall call, $0.SearchItemPreHookReq request);
  $async.Future<$0.SearchItemReply> searchItem($grpc.ServiceCall call, $0.SearchItemReq request);
  $async.Future<$0.AtSearchReply> atSearch($grpc.ServiceCall call, $0.AtSearchReq request);
  $async.Future<$0.ReplyInfoReply> replyInfo($grpc.ServiceCall call, $0.ReplyInfoReq request);
  $async.Future<$0.UserCallbackReply> userCallback($grpc.ServiceCall call, $0.UserCallbackReq request);
  $async.Future<$0.ShareRepliesInfoResp> shareRepliesInfo($grpc.ServiceCall call, $0.ShareRepliesInfoReq request);
  $async.Future<$0.SuggestEmotesResp> suggestEmotes($grpc.ServiceCall call, $0.SuggestEmotesReq request);
}
