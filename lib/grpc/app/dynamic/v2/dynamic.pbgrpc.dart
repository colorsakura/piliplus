//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v2/dynamic.proto
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

import 'dynamic.pb.dart' as $0;

export 'dynamic.pb.dart';

@$pb.GrpcServiceName('bilibili.app.dynamic.v2.Dynamic')
class DynamicClient extends $grpc.Client {
  static final _$alumniDynamics = $grpc.ClientMethod<$0.AlumniDynamicsReq, $0.AlumniDynamicsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/AlumniDynamics',
      ($0.AlumniDynamicsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AlumniDynamicsReply.fromBuffer(value));
  static final _$campusBillBoard = $grpc.ClientMethod<$0.CampusBillBoardReq, $0.CampusBillBoardReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusBillBoard',
      ($0.CampusBillBoardReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusBillBoardReply.fromBuffer(value));
  static final _$campusEntryTab = $grpc.ClientMethod<$0.CampusEntryTabReq, $0.CampusEntryTabResp>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusEntryTab',
      ($0.CampusEntryTabReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusEntryTabResp.fromBuffer(value));
  static final _$campusFeedback = $grpc.ClientMethod<$0.CampusFeedbackReq, $0.CampusFeedbackReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusFeedback',
      ($0.CampusFeedbackReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusFeedbackReply.fromBuffer(value));
  static final _$campusHomePages = $grpc.ClientMethod<$0.CampusHomePagesReq, $0.CampusHomePagesReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusHomePages',
      ($0.CampusHomePagesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusHomePagesReply.fromBuffer(value));
  static final _$campusMateLikeList = $grpc.ClientMethod<$0.CampusMateLikeListReq, $0.CampusMateLikeListReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusMateLikeList',
      ($0.CampusMateLikeListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusMateLikeListReply.fromBuffer(value));
  static final _$campusMngDetail = $grpc.ClientMethod<$0.CampusMngDetailReq, $0.CampusMngDetailReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusMngDetail',
      ($0.CampusMngDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusMngDetailReply.fromBuffer(value));
  static final _$campusMngQuizOperate = $grpc.ClientMethod<$0.CampusMngQuizOperateReq, $0.CampusMngQuizOperateReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusMngQuizOperate',
      ($0.CampusMngQuizOperateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusMngQuizOperateReply.fromBuffer(value));
  static final _$campusMngSubmit = $grpc.ClientMethod<$0.CampusMngSubmitReq, $0.CampusMngSubmitReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusMngSubmit',
      ($0.CampusMngSubmitReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusMngSubmitReply.fromBuffer(value));
  static final _$campusRcmd = $grpc.ClientMethod<$0.CampusRcmdReq, $0.CampusRcmdReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusRcmd',
      ($0.CampusRcmdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusRcmdReply.fromBuffer(value));
  static final _$campusRcmdFeed = $grpc.ClientMethod<$0.CampusRcmdFeedReq, $0.CampusRcmdFeedReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusRcmdFeed',
      ($0.CampusRcmdFeedReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusRcmdFeedReply.fromBuffer(value));
  static final _$campusRecommend = $grpc.ClientMethod<$0.CampusRecommendReq, $0.CampusRecommendReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusRecommend',
      ($0.CampusRecommendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusRecommendReply.fromBuffer(value));
  static final _$campusRedDot = $grpc.ClientMethod<$0.CampusRedDotReq, $0.CampusRedDotReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusRedDot',
      ($0.CampusRedDotReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusRedDotReply.fromBuffer(value));
  static final _$campusSquare = $grpc.ClientMethod<$0.CampusSquareReq, $0.CampusSquareReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusSquare',
      ($0.CampusSquareReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusSquareReply.fromBuffer(value));
  static final _$campusTopicRcmdFeed = $grpc.ClientMethod<$0.CampusTopicRcmdFeedReq, $0.CampusTopicRcmdFeedReply>(
      '/bilibili.app.dynamic.v2.Dynamic/CampusTopicRcmdFeed',
      ($0.CampusTopicRcmdFeedReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CampusTopicRcmdFeedReply.fromBuffer(value));
  static final _$dynAdditionCommonFollow = $grpc.ClientMethod<$0.DynAdditionCommonFollowReq, $0.DynAdditionCommonFollowReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynAdditionCommonFollow',
      ($0.DynAdditionCommonFollowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynAdditionCommonFollowReply.fromBuffer(value));
  static final _$dynAll = $grpc.ClientMethod<$0.DynAllReq, $0.DynAllReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynAll',
      ($0.DynAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynAllReply.fromBuffer(value));
  static final _$dynAllPersonal = $grpc.ClientMethod<$0.DynAllPersonalReq, $0.DynAllPersonalReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynAllPersonal',
      ($0.DynAllPersonalReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynAllPersonalReply.fromBuffer(value));
  static final _$dynAllUpdOffset = $grpc.ClientMethod<$0.DynAllUpdOffsetReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynAllUpdOffset',
      ($0.DynAllUpdOffsetReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$dynDetail = $grpc.ClientMethod<$0.DynDetailReq, $0.DynDetailReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynDetail',
      ($0.DynDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynDetailReply.fromBuffer(value));
  static final _$dynDetails = $grpc.ClientMethod<$0.DynDetailsReq, $0.DynDetailsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynDetails',
      ($0.DynDetailsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynDetailsReply.fromBuffer(value));
  static final _$dynFakeCard = $grpc.ClientMethod<$0.DynFakeCardReq, $0.DynFakeCardReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynFakeCard',
      ($0.DynFakeCardReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynFakeCardReply.fromBuffer(value));
  static final _$dynFriend = $grpc.ClientMethod<$0.DynFriendReq, $0.DynFriendReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynFriend',
      ($0.DynFriendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynFriendReply.fromBuffer(value));
  static final _$dynLight = $grpc.ClientMethod<$0.DynLightReq, $0.DynLightReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynLight',
      ($0.DynLightReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynLightReply.fromBuffer(value));
  static final _$dynMixUpListViewMore = $grpc.ClientMethod<$0.DynMixUpListViewMoreReq, $0.DynMixUpListViewMoreReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynMixUpListViewMore',
      ($0.DynMixUpListViewMoreReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynMixUpListViewMoreReply.fromBuffer(value));
  static final _$dynRcmdUpExchange = $grpc.ClientMethod<$0.DynRcmdUpExchangeReq, $0.DynRcmdUpExchangeReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynRcmdUpExchange',
      ($0.DynRcmdUpExchangeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynRcmdUpExchangeReply.fromBuffer(value));
  static final _$dynSearch = $grpc.ClientMethod<$0.DynSearchReq, $0.DynSearchReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynSearch',
      ($0.DynSearchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynSearchReply.fromBuffer(value));
  static final _$dynServerDetails = $grpc.ClientMethod<$0.DynServerDetailsReq, $0.DynServerDetailsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynServerDetails',
      ($0.DynServerDetailsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynServerDetailsReply.fromBuffer(value));
  static final _$dynSpace = $grpc.ClientMethod<$0.DynSpaceReq, $0.DynSpaceRsp>(
      '/bilibili.app.dynamic.v2.Dynamic/DynSpace',
      ($0.DynSpaceReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynSpaceRsp.fromBuffer(value));
  static final _$dynSpaceSearchDetails = $grpc.ClientMethod<$0.DynSpaceSearchDetailsReq, $0.DynSpaceSearchDetailsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynSpaceSearchDetails',
      ($0.DynSpaceSearchDetailsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynSpaceSearchDetailsReply.fromBuffer(value));
  static final _$dynTab = $grpc.ClientMethod<$0.DynTabReq, $0.DynTabReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynTab',
      ($0.DynTabReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynTabReply.fromBuffer(value));
  static final _$dynThumb = $grpc.ClientMethod<$0.DynThumbReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynThumb',
      ($0.DynThumbReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$dynUnLoginRcmd = $grpc.ClientMethod<$0.DynRcmdReq, $0.DynRcmdReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynUnLoginRcmd',
      ($0.DynRcmdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynRcmdReply.fromBuffer(value));
  static final _$dynVideo = $grpc.ClientMethod<$0.DynVideoReq, $0.DynVideoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynVideo',
      ($0.DynVideoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynVideoReply.fromBuffer(value));
  static final _$dynVideoPersonal = $grpc.ClientMethod<$0.DynVideoPersonalReq, $0.DynVideoPersonalReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynVideoPersonal',
      ($0.DynVideoPersonalReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynVideoPersonalReply.fromBuffer(value));
  static final _$dynVideoUpdOffset = $grpc.ClientMethod<$0.DynVideoUpdOffsetReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynVideoUpdOffset',
      ($0.DynVideoUpdOffsetReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$dynVote = $grpc.ClientMethod<$0.DynVoteReq, $0.DynVoteReply>(
      '/bilibili.app.dynamic.v2.Dynamic/DynVote',
      ($0.DynVoteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynVoteReply.fromBuffer(value));
  static final _$feedFilter = $grpc.ClientMethod<$0.FeedFilterReq, $0.FeedFilterReply>(
      '/bilibili.app.dynamic.v2.Dynamic/FeedFilter',
      ($0.FeedFilterReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FeedFilterReply.fromBuffer(value));
  static final _$fetchTabSetting = $grpc.ClientMethod<$0.NoReq, $0.FetchTabSettingReply>(
      '/bilibili.app.dynamic.v2.Dynamic/FetchTabSetting',
      ($0.NoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchTabSettingReply.fromBuffer(value));
  static final _$homeSubscribe = $grpc.ClientMethod<$0.HomeSubscribeReq, $0.HomeSubscribeReply>(
      '/bilibili.app.dynamic.v2.Dynamic/HomeSubscribe',
      ($0.HomeSubscribeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HomeSubscribeReply.fromBuffer(value));
  static final _$lbsPoi = $grpc.ClientMethod<$0.LbsPoiReq, $0.LbsPoiReply>(
      '/bilibili.app.dynamic.v2.Dynamic/LbsPoi',
      ($0.LbsPoiReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LbsPoiReply.fromBuffer(value));
  static final _$legacyTopicFeed = $grpc.ClientMethod<$0.LegacyTopicFeedReq, $0.LegacyTopicFeedReply>(
      '/bilibili.app.dynamic.v2.Dynamic/LegacyTopicFeed',
      ($0.LegacyTopicFeedReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LegacyTopicFeedReply.fromBuffer(value));
  static final _$likeList = $grpc.ClientMethod<$0.LikeListReq, $0.LikeListReply>(
      '/bilibili.app.dynamic.v2.Dynamic/LikeList',
      ($0.LikeListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LikeListReply.fromBuffer(value));
  static final _$officialAccounts = $grpc.ClientMethod<$0.OfficialAccountsReq, $0.OfficialAccountsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/OfficialAccounts',
      ($0.OfficialAccountsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OfficialAccountsReply.fromBuffer(value));
  static final _$officialDynamics = $grpc.ClientMethod<$0.OfficialDynamicsReq, $0.OfficialDynamicsReply>(
      '/bilibili.app.dynamic.v2.Dynamic/OfficialDynamics',
      ($0.OfficialDynamicsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OfficialDynamicsReply.fromBuffer(value));
  static final _$reactionList = $grpc.ClientMethod<$0.ReactionListReq, $0.ReactionListReply>(
      '/bilibili.app.dynamic.v2.Dynamic/ReactionList',
      ($0.ReactionListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReactionListReply.fromBuffer(value));
  static final _$repostList = $grpc.ClientMethod<$0.RepostListReq, $0.RepostListRsp>(
      '/bilibili.app.dynamic.v2.Dynamic/RepostList',
      ($0.RepostListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RepostListRsp.fromBuffer(value));
  static final _$schoolRecommend = $grpc.ClientMethod<$0.SchoolRecommendReq, $0.SchoolRecommendReply>(
      '/bilibili.app.dynamic.v2.Dynamic/SchoolRecommend',
      ($0.SchoolRecommendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SchoolRecommendReply.fromBuffer(value));
  static final _$schoolSearch = $grpc.ClientMethod<$0.SchoolSearchReq, $0.SchoolSearchReply>(
      '/bilibili.app.dynamic.v2.Dynamic/SchoolSearch',
      ($0.SchoolSearchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SchoolSearchReply.fromBuffer(value));
  static final _$setDecision = $grpc.ClientMethod<$0.SetDecisionReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/SetDecision',
      ($0.SetDecisionReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$setRecentCampus = $grpc.ClientMethod<$0.SetRecentCampusReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/SetRecentCampus',
      ($0.SetRecentCampusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$subscribeCampus = $grpc.ClientMethod<$0.SubscribeCampusReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/SubscribeCampus',
      ($0.SubscribeCampusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$topicList = $grpc.ClientMethod<$0.TopicListReq, $0.TopicListReply>(
      '/bilibili.app.dynamic.v2.Dynamic/TopicList',
      ($0.TopicListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TopicListReply.fromBuffer(value));
  static final _$topicSquare = $grpc.ClientMethod<$0.TopicSquareReq, $0.TopicSquareReply>(
      '/bilibili.app.dynamic.v2.Dynamic/TopicSquare',
      ($0.TopicSquareReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TopicSquareReply.fromBuffer(value));
  static final _$unfollowMatch = $grpc.ClientMethod<$0.UnfollowMatchReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/UnfollowMatch',
      ($0.UnfollowMatchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$updateTabSetting = $grpc.ClientMethod<$0.UpdateTabSettingReq, $0.NoReply>(
      '/bilibili.app.dynamic.v2.Dynamic/UpdateTabSetting',
      ($0.UpdateTabSettingReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));

  DynamicClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AlumniDynamicsReply> alumniDynamics($0.AlumniDynamicsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$alumniDynamics, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusBillBoardReply> campusBillBoard($0.CampusBillBoardReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusBillBoard, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusEntryTabResp> campusEntryTab($0.CampusEntryTabReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusEntryTab, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusFeedbackReply> campusFeedback($0.CampusFeedbackReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusHomePagesReply> campusHomePages($0.CampusHomePagesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusHomePages, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusMateLikeListReply> campusMateLikeList($0.CampusMateLikeListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusMateLikeList, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusMngDetailReply> campusMngDetail($0.CampusMngDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusMngDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusMngQuizOperateReply> campusMngQuizOperate($0.CampusMngQuizOperateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusMngQuizOperate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusMngSubmitReply> campusMngSubmit($0.CampusMngSubmitReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusMngSubmit, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusRcmdReply> campusRcmd($0.CampusRcmdReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusRcmd, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusRcmdFeedReply> campusRcmdFeed($0.CampusRcmdFeedReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusRcmdFeed, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusRecommendReply> campusRecommend($0.CampusRecommendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusRecommend, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusRedDotReply> campusRedDot($0.CampusRedDotReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusRedDot, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusSquareReply> campusSquare($0.CampusSquareReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusSquare, request, options: options);
  }

  $grpc.ResponseFuture<$0.CampusTopicRcmdFeedReply> campusTopicRcmdFeed($0.CampusTopicRcmdFeedReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$campusTopicRcmdFeed, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynAdditionCommonFollowReply> dynAdditionCommonFollow($0.DynAdditionCommonFollowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynAdditionCommonFollow, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynAllReply> dynAll($0.DynAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynAllPersonalReply> dynAllPersonal($0.DynAllPersonalReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynAllPersonal, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> dynAllUpdOffset($0.DynAllUpdOffsetReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynAllUpdOffset, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynDetailReply> dynDetail($0.DynDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynDetailsReply> dynDetails($0.DynDetailsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynFakeCardReply> dynFakeCard($0.DynFakeCardReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynFakeCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynFriendReply> dynFriend($0.DynFriendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynLightReply> dynLight($0.DynLightReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynLight, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore($0.DynMixUpListViewMoreReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynMixUpListViewMore, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynRcmdUpExchangeReply> dynRcmdUpExchange($0.DynRcmdUpExchangeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynRcmdUpExchange, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynSearchReply> dynSearch($0.DynSearchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynSearch, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynServerDetailsReply> dynServerDetails($0.DynServerDetailsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynServerDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynSpaceRsp> dynSpace($0.DynSpaceReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynSpace, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynSpaceSearchDetailsReply> dynSpaceSearchDetails($0.DynSpaceSearchDetailsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynSpaceSearchDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynTabReply> dynTab($0.DynTabReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynTab, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> dynThumb($0.DynThumbReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynThumb, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynRcmdReply> dynUnLoginRcmd($0.DynRcmdReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynUnLoginRcmd, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynVideoReply> dynVideo($0.DynVideoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVideo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynVideoPersonalReply> dynVideoPersonal($0.DynVideoPersonalReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVideoPersonal, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> dynVideoUpdOffset($0.DynVideoUpdOffsetReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVideoUpdOffset, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynVoteReply> dynVote($0.DynVoteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVote, request, options: options);
  }

  $grpc.ResponseFuture<$0.FeedFilterReply> feedFilter($0.FeedFilterReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$feedFilter, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchTabSettingReply> fetchTabSetting($0.NoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTabSetting, request, options: options);
  }

  $grpc.ResponseFuture<$0.HomeSubscribeReply> homeSubscribe($0.HomeSubscribeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$homeSubscribe, request, options: options);
  }

  $grpc.ResponseFuture<$0.LbsPoiReply> lbsPoi($0.LbsPoiReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lbsPoi, request, options: options);
  }

  $grpc.ResponseFuture<$0.LegacyTopicFeedReply> legacyTopicFeed($0.LegacyTopicFeedReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$legacyTopicFeed, request, options: options);
  }

  $grpc.ResponseFuture<$0.LikeListReply> likeList($0.LikeListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$likeList, request, options: options);
  }

  $grpc.ResponseFuture<$0.OfficialAccountsReply> officialAccounts($0.OfficialAccountsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$officialAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$0.OfficialDynamicsReply> officialDynamics($0.OfficialDynamicsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$officialDynamics, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReactionListReply> reactionList($0.ReactionListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactionList, request, options: options);
  }

  $grpc.ResponseFuture<$0.RepostListRsp> repostList($0.RepostListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$repostList, request, options: options);
  }

  $grpc.ResponseFuture<$0.SchoolRecommendReply> schoolRecommend($0.SchoolRecommendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$schoolRecommend, request, options: options);
  }

  $grpc.ResponseFuture<$0.SchoolSearchReply> schoolSearch($0.SchoolSearchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$schoolSearch, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> setDecision($0.SetDecisionReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDecision, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> setRecentCampus($0.SetRecentCampusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRecentCampus, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> subscribeCampus($0.SubscribeCampusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subscribeCampus, request, options: options);
  }

  $grpc.ResponseFuture<$0.TopicListReply> topicList($0.TopicListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$topicList, request, options: options);
  }

  $grpc.ResponseFuture<$0.TopicSquareReply> topicSquare($0.TopicSquareReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$topicSquare, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> unfollowMatch($0.UnfollowMatchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unfollowMatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> updateTabSetting($0.UpdateTabSettingReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTabSetting, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.app.dynamic.v2.Dynamic')
abstract class DynamicServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.app.dynamic.v2.Dynamic';

  DynamicServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AlumniDynamicsReq, $0.AlumniDynamicsReply>(
        'AlumniDynamics',
        alumniDynamics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AlumniDynamicsReq.fromBuffer(value),
        ($0.AlumniDynamicsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusBillBoardReq, $0.CampusBillBoardReply>(
        'CampusBillBoard',
        campusBillBoard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusBillBoardReq.fromBuffer(value),
        ($0.CampusBillBoardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusEntryTabReq, $0.CampusEntryTabResp>(
        'CampusEntryTab',
        campusEntryTab_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusEntryTabReq.fromBuffer(value),
        ($0.CampusEntryTabResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusFeedbackReq, $0.CampusFeedbackReply>(
        'CampusFeedback',
        campusFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusFeedbackReq.fromBuffer(value),
        ($0.CampusFeedbackReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusHomePagesReq, $0.CampusHomePagesReply>(
        'CampusHomePages',
        campusHomePages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusHomePagesReq.fromBuffer(value),
        ($0.CampusHomePagesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusMateLikeListReq, $0.CampusMateLikeListReply>(
        'CampusMateLikeList',
        campusMateLikeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusMateLikeListReq.fromBuffer(value),
        ($0.CampusMateLikeListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusMngDetailReq, $0.CampusMngDetailReply>(
        'CampusMngDetail',
        campusMngDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusMngDetailReq.fromBuffer(value),
        ($0.CampusMngDetailReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusMngQuizOperateReq, $0.CampusMngQuizOperateReply>(
        'CampusMngQuizOperate',
        campusMngQuizOperate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusMngQuizOperateReq.fromBuffer(value),
        ($0.CampusMngQuizOperateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusMngSubmitReq, $0.CampusMngSubmitReply>(
        'CampusMngSubmit',
        campusMngSubmit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusMngSubmitReq.fromBuffer(value),
        ($0.CampusMngSubmitReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusRcmdReq, $0.CampusRcmdReply>(
        'CampusRcmd',
        campusRcmd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusRcmdReq.fromBuffer(value),
        ($0.CampusRcmdReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusRcmdFeedReq, $0.CampusRcmdFeedReply>(
        'CampusRcmdFeed',
        campusRcmdFeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusRcmdFeedReq.fromBuffer(value),
        ($0.CampusRcmdFeedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusRecommendReq, $0.CampusRecommendReply>(
        'CampusRecommend',
        campusRecommend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusRecommendReq.fromBuffer(value),
        ($0.CampusRecommendReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusRedDotReq, $0.CampusRedDotReply>(
        'CampusRedDot',
        campusRedDot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusRedDotReq.fromBuffer(value),
        ($0.CampusRedDotReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusSquareReq, $0.CampusSquareReply>(
        'CampusSquare',
        campusSquare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusSquareReq.fromBuffer(value),
        ($0.CampusSquareReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CampusTopicRcmdFeedReq, $0.CampusTopicRcmdFeedReply>(
        'CampusTopicRcmdFeed',
        campusTopicRcmdFeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CampusTopicRcmdFeedReq.fromBuffer(value),
        ($0.CampusTopicRcmdFeedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynAdditionCommonFollowReq, $0.DynAdditionCommonFollowReply>(
        'DynAdditionCommonFollow',
        dynAdditionCommonFollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynAdditionCommonFollowReq.fromBuffer(value),
        ($0.DynAdditionCommonFollowReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynAllReq, $0.DynAllReply>(
        'DynAll',
        dynAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynAllReq.fromBuffer(value),
        ($0.DynAllReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynAllPersonalReq, $0.DynAllPersonalReply>(
        'DynAllPersonal',
        dynAllPersonal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynAllPersonalReq.fromBuffer(value),
        ($0.DynAllPersonalReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynAllUpdOffsetReq, $0.NoReply>(
        'DynAllUpdOffset',
        dynAllUpdOffset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynAllUpdOffsetReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynDetailReq, $0.DynDetailReply>(
        'DynDetail',
        dynDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynDetailReq.fromBuffer(value),
        ($0.DynDetailReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynDetailsReq, $0.DynDetailsReply>(
        'DynDetails',
        dynDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynDetailsReq.fromBuffer(value),
        ($0.DynDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynFakeCardReq, $0.DynFakeCardReply>(
        'DynFakeCard',
        dynFakeCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynFakeCardReq.fromBuffer(value),
        ($0.DynFakeCardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynFriendReq, $0.DynFriendReply>(
        'DynFriend',
        dynFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynFriendReq.fromBuffer(value),
        ($0.DynFriendReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynLightReq, $0.DynLightReply>(
        'DynLight',
        dynLight_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynLightReq.fromBuffer(value),
        ($0.DynLightReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynMixUpListViewMoreReq, $0.DynMixUpListViewMoreReply>(
        'DynMixUpListViewMore',
        dynMixUpListViewMore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynMixUpListViewMoreReq.fromBuffer(value),
        ($0.DynMixUpListViewMoreReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynRcmdUpExchangeReq, $0.DynRcmdUpExchangeReply>(
        'DynRcmdUpExchange',
        dynRcmdUpExchange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynRcmdUpExchangeReq.fromBuffer(value),
        ($0.DynRcmdUpExchangeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynSearchReq, $0.DynSearchReply>(
        'DynSearch',
        dynSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynSearchReq.fromBuffer(value),
        ($0.DynSearchReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynServerDetailsReq, $0.DynServerDetailsReply>(
        'DynServerDetails',
        dynServerDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynServerDetailsReq.fromBuffer(value),
        ($0.DynServerDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynSpaceReq, $0.DynSpaceRsp>(
        'DynSpace',
        dynSpace_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynSpaceReq.fromBuffer(value),
        ($0.DynSpaceRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynSpaceSearchDetailsReq, $0.DynSpaceSearchDetailsReply>(
        'DynSpaceSearchDetails',
        dynSpaceSearchDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynSpaceSearchDetailsReq.fromBuffer(value),
        ($0.DynSpaceSearchDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynTabReq, $0.DynTabReply>(
        'DynTab',
        dynTab_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynTabReq.fromBuffer(value),
        ($0.DynTabReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynThumbReq, $0.NoReply>(
        'DynThumb',
        dynThumb_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynThumbReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynRcmdReq, $0.DynRcmdReply>(
        'DynUnLoginRcmd',
        dynUnLoginRcmd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynRcmdReq.fromBuffer(value),
        ($0.DynRcmdReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynVideoReq, $0.DynVideoReply>(
        'DynVideo',
        dynVideo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVideoReq.fromBuffer(value),
        ($0.DynVideoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynVideoPersonalReq, $0.DynVideoPersonalReply>(
        'DynVideoPersonal',
        dynVideoPersonal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVideoPersonalReq.fromBuffer(value),
        ($0.DynVideoPersonalReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynVideoUpdOffsetReq, $0.NoReply>(
        'DynVideoUpdOffset',
        dynVideoUpdOffset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVideoUpdOffsetReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynVoteReq, $0.DynVoteReply>(
        'DynVote',
        dynVote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVoteReq.fromBuffer(value),
        ($0.DynVoteReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FeedFilterReq, $0.FeedFilterReply>(
        'FeedFilter',
        feedFilter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FeedFilterReq.fromBuffer(value),
        ($0.FeedFilterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NoReq, $0.FetchTabSettingReply>(
        'FetchTabSetting',
        fetchTabSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NoReq.fromBuffer(value),
        ($0.FetchTabSettingReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HomeSubscribeReq, $0.HomeSubscribeReply>(
        'HomeSubscribe',
        homeSubscribe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HomeSubscribeReq.fromBuffer(value),
        ($0.HomeSubscribeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LbsPoiReq, $0.LbsPoiReply>(
        'LbsPoi',
        lbsPoi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LbsPoiReq.fromBuffer(value),
        ($0.LbsPoiReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LegacyTopicFeedReq, $0.LegacyTopicFeedReply>(
        'LegacyTopicFeed',
        legacyTopicFeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LegacyTopicFeedReq.fromBuffer(value),
        ($0.LegacyTopicFeedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LikeListReq, $0.LikeListReply>(
        'LikeList',
        likeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LikeListReq.fromBuffer(value),
        ($0.LikeListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OfficialAccountsReq, $0.OfficialAccountsReply>(
        'OfficialAccounts',
        officialAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OfficialAccountsReq.fromBuffer(value),
        ($0.OfficialAccountsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OfficialDynamicsReq, $0.OfficialDynamicsReply>(
        'OfficialDynamics',
        officialDynamics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OfficialDynamicsReq.fromBuffer(value),
        ($0.OfficialDynamicsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReactionListReq, $0.ReactionListReply>(
        'ReactionList',
        reactionList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReactionListReq.fromBuffer(value),
        ($0.ReactionListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RepostListReq, $0.RepostListRsp>(
        'RepostList',
        repostList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RepostListReq.fromBuffer(value),
        ($0.RepostListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SchoolRecommendReq, $0.SchoolRecommendReply>(
        'SchoolRecommend',
        schoolRecommend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SchoolRecommendReq.fromBuffer(value),
        ($0.SchoolRecommendReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SchoolSearchReq, $0.SchoolSearchReply>(
        'SchoolSearch',
        schoolSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SchoolSearchReq.fromBuffer(value),
        ($0.SchoolSearchReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetDecisionReq, $0.NoReply>(
        'SetDecision',
        setDecision_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetDecisionReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRecentCampusReq, $0.NoReply>(
        'SetRecentCampus',
        setRecentCampus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRecentCampusReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeCampusReq, $0.NoReply>(
        'SubscribeCampus',
        subscribeCampus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SubscribeCampusReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TopicListReq, $0.TopicListReply>(
        'TopicList',
        topicList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TopicListReq.fromBuffer(value),
        ($0.TopicListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TopicSquareReq, $0.TopicSquareReply>(
        'TopicSquare',
        topicSquare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TopicSquareReq.fromBuffer(value),
        ($0.TopicSquareReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnfollowMatchReq, $0.NoReply>(
        'UnfollowMatch',
        unfollowMatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnfollowMatchReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTabSettingReq, $0.NoReply>(
        'UpdateTabSetting',
        updateTabSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTabSettingReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AlumniDynamicsReply> alumniDynamics_Pre($grpc.ServiceCall call, $async.Future<$0.AlumniDynamicsReq> request) async {
    return alumniDynamics(call, await request);
  }

  $async.Future<$0.CampusBillBoardReply> campusBillBoard_Pre($grpc.ServiceCall call, $async.Future<$0.CampusBillBoardReq> request) async {
    return campusBillBoard(call, await request);
  }

  $async.Future<$0.CampusEntryTabResp> campusEntryTab_Pre($grpc.ServiceCall call, $async.Future<$0.CampusEntryTabReq> request) async {
    return campusEntryTab(call, await request);
  }

  $async.Future<$0.CampusFeedbackReply> campusFeedback_Pre($grpc.ServiceCall call, $async.Future<$0.CampusFeedbackReq> request) async {
    return campusFeedback(call, await request);
  }

  $async.Future<$0.CampusHomePagesReply> campusHomePages_Pre($grpc.ServiceCall call, $async.Future<$0.CampusHomePagesReq> request) async {
    return campusHomePages(call, await request);
  }

  $async.Future<$0.CampusMateLikeListReply> campusMateLikeList_Pre($grpc.ServiceCall call, $async.Future<$0.CampusMateLikeListReq> request) async {
    return campusMateLikeList(call, await request);
  }

  $async.Future<$0.CampusMngDetailReply> campusMngDetail_Pre($grpc.ServiceCall call, $async.Future<$0.CampusMngDetailReq> request) async {
    return campusMngDetail(call, await request);
  }

  $async.Future<$0.CampusMngQuizOperateReply> campusMngQuizOperate_Pre($grpc.ServiceCall call, $async.Future<$0.CampusMngQuizOperateReq> request) async {
    return campusMngQuizOperate(call, await request);
  }

  $async.Future<$0.CampusMngSubmitReply> campusMngSubmit_Pre($grpc.ServiceCall call, $async.Future<$0.CampusMngSubmitReq> request) async {
    return campusMngSubmit(call, await request);
  }

  $async.Future<$0.CampusRcmdReply> campusRcmd_Pre($grpc.ServiceCall call, $async.Future<$0.CampusRcmdReq> request) async {
    return campusRcmd(call, await request);
  }

  $async.Future<$0.CampusRcmdFeedReply> campusRcmdFeed_Pre($grpc.ServiceCall call, $async.Future<$0.CampusRcmdFeedReq> request) async {
    return campusRcmdFeed(call, await request);
  }

  $async.Future<$0.CampusRecommendReply> campusRecommend_Pre($grpc.ServiceCall call, $async.Future<$0.CampusRecommendReq> request) async {
    return campusRecommend(call, await request);
  }

  $async.Future<$0.CampusRedDotReply> campusRedDot_Pre($grpc.ServiceCall call, $async.Future<$0.CampusRedDotReq> request) async {
    return campusRedDot(call, await request);
  }

  $async.Future<$0.CampusSquareReply> campusSquare_Pre($grpc.ServiceCall call, $async.Future<$0.CampusSquareReq> request) async {
    return campusSquare(call, await request);
  }

  $async.Future<$0.CampusTopicRcmdFeedReply> campusTopicRcmdFeed_Pre($grpc.ServiceCall call, $async.Future<$0.CampusTopicRcmdFeedReq> request) async {
    return campusTopicRcmdFeed(call, await request);
  }

  $async.Future<$0.DynAdditionCommonFollowReply> dynAdditionCommonFollow_Pre($grpc.ServiceCall call, $async.Future<$0.DynAdditionCommonFollowReq> request) async {
    return dynAdditionCommonFollow(call, await request);
  }

  $async.Future<$0.DynAllReply> dynAll_Pre($grpc.ServiceCall call, $async.Future<$0.DynAllReq> request) async {
    return dynAll(call, await request);
  }

  $async.Future<$0.DynAllPersonalReply> dynAllPersonal_Pre($grpc.ServiceCall call, $async.Future<$0.DynAllPersonalReq> request) async {
    return dynAllPersonal(call, await request);
  }

  $async.Future<$0.NoReply> dynAllUpdOffset_Pre($grpc.ServiceCall call, $async.Future<$0.DynAllUpdOffsetReq> request) async {
    return dynAllUpdOffset(call, await request);
  }

  $async.Future<$0.DynDetailReply> dynDetail_Pre($grpc.ServiceCall call, $async.Future<$0.DynDetailReq> request) async {
    return dynDetail(call, await request);
  }

  $async.Future<$0.DynDetailsReply> dynDetails_Pre($grpc.ServiceCall call, $async.Future<$0.DynDetailsReq> request) async {
    return dynDetails(call, await request);
  }

  $async.Future<$0.DynFakeCardReply> dynFakeCard_Pre($grpc.ServiceCall call, $async.Future<$0.DynFakeCardReq> request) async {
    return dynFakeCard(call, await request);
  }

  $async.Future<$0.DynFriendReply> dynFriend_Pre($grpc.ServiceCall call, $async.Future<$0.DynFriendReq> request) async {
    return dynFriend(call, await request);
  }

  $async.Future<$0.DynLightReply> dynLight_Pre($grpc.ServiceCall call, $async.Future<$0.DynLightReq> request) async {
    return dynLight(call, await request);
  }

  $async.Future<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore_Pre($grpc.ServiceCall call, $async.Future<$0.DynMixUpListViewMoreReq> request) async {
    return dynMixUpListViewMore(call, await request);
  }

  $async.Future<$0.DynRcmdUpExchangeReply> dynRcmdUpExchange_Pre($grpc.ServiceCall call, $async.Future<$0.DynRcmdUpExchangeReq> request) async {
    return dynRcmdUpExchange(call, await request);
  }

  $async.Future<$0.DynSearchReply> dynSearch_Pre($grpc.ServiceCall call, $async.Future<$0.DynSearchReq> request) async {
    return dynSearch(call, await request);
  }

  $async.Future<$0.DynServerDetailsReply> dynServerDetails_Pre($grpc.ServiceCall call, $async.Future<$0.DynServerDetailsReq> request) async {
    return dynServerDetails(call, await request);
  }

  $async.Future<$0.DynSpaceRsp> dynSpace_Pre($grpc.ServiceCall call, $async.Future<$0.DynSpaceReq> request) async {
    return dynSpace(call, await request);
  }

  $async.Future<$0.DynSpaceSearchDetailsReply> dynSpaceSearchDetails_Pre($grpc.ServiceCall call, $async.Future<$0.DynSpaceSearchDetailsReq> request) async {
    return dynSpaceSearchDetails(call, await request);
  }

  $async.Future<$0.DynTabReply> dynTab_Pre($grpc.ServiceCall call, $async.Future<$0.DynTabReq> request) async {
    return dynTab(call, await request);
  }

  $async.Future<$0.NoReply> dynThumb_Pre($grpc.ServiceCall call, $async.Future<$0.DynThumbReq> request) async {
    return dynThumb(call, await request);
  }

  $async.Future<$0.DynRcmdReply> dynUnLoginRcmd_Pre($grpc.ServiceCall call, $async.Future<$0.DynRcmdReq> request) async {
    return dynUnLoginRcmd(call, await request);
  }

  $async.Future<$0.DynVideoReply> dynVideo_Pre($grpc.ServiceCall call, $async.Future<$0.DynVideoReq> request) async {
    return dynVideo(call, await request);
  }

  $async.Future<$0.DynVideoPersonalReply> dynVideoPersonal_Pre($grpc.ServiceCall call, $async.Future<$0.DynVideoPersonalReq> request) async {
    return dynVideoPersonal(call, await request);
  }

  $async.Future<$0.NoReply> dynVideoUpdOffset_Pre($grpc.ServiceCall call, $async.Future<$0.DynVideoUpdOffsetReq> request) async {
    return dynVideoUpdOffset(call, await request);
  }

  $async.Future<$0.DynVoteReply> dynVote_Pre($grpc.ServiceCall call, $async.Future<$0.DynVoteReq> request) async {
    return dynVote(call, await request);
  }

  $async.Future<$0.FeedFilterReply> feedFilter_Pre($grpc.ServiceCall call, $async.Future<$0.FeedFilterReq> request) async {
    return feedFilter(call, await request);
  }

  $async.Future<$0.FetchTabSettingReply> fetchTabSetting_Pre($grpc.ServiceCall call, $async.Future<$0.NoReq> request) async {
    return fetchTabSetting(call, await request);
  }

  $async.Future<$0.HomeSubscribeReply> homeSubscribe_Pre($grpc.ServiceCall call, $async.Future<$0.HomeSubscribeReq> request) async {
    return homeSubscribe(call, await request);
  }

  $async.Future<$0.LbsPoiReply> lbsPoi_Pre($grpc.ServiceCall call, $async.Future<$0.LbsPoiReq> request) async {
    return lbsPoi(call, await request);
  }

  $async.Future<$0.LegacyTopicFeedReply> legacyTopicFeed_Pre($grpc.ServiceCall call, $async.Future<$0.LegacyTopicFeedReq> request) async {
    return legacyTopicFeed(call, await request);
  }

  $async.Future<$0.LikeListReply> likeList_Pre($grpc.ServiceCall call, $async.Future<$0.LikeListReq> request) async {
    return likeList(call, await request);
  }

  $async.Future<$0.OfficialAccountsReply> officialAccounts_Pre($grpc.ServiceCall call, $async.Future<$0.OfficialAccountsReq> request) async {
    return officialAccounts(call, await request);
  }

  $async.Future<$0.OfficialDynamicsReply> officialDynamics_Pre($grpc.ServiceCall call, $async.Future<$0.OfficialDynamicsReq> request) async {
    return officialDynamics(call, await request);
  }

  $async.Future<$0.ReactionListReply> reactionList_Pre($grpc.ServiceCall call, $async.Future<$0.ReactionListReq> request) async {
    return reactionList(call, await request);
  }

  $async.Future<$0.RepostListRsp> repostList_Pre($grpc.ServiceCall call, $async.Future<$0.RepostListReq> request) async {
    return repostList(call, await request);
  }

  $async.Future<$0.SchoolRecommendReply> schoolRecommend_Pre($grpc.ServiceCall call, $async.Future<$0.SchoolRecommendReq> request) async {
    return schoolRecommend(call, await request);
  }

  $async.Future<$0.SchoolSearchReply> schoolSearch_Pre($grpc.ServiceCall call, $async.Future<$0.SchoolSearchReq> request) async {
    return schoolSearch(call, await request);
  }

  $async.Future<$0.NoReply> setDecision_Pre($grpc.ServiceCall call, $async.Future<$0.SetDecisionReq> request) async {
    return setDecision(call, await request);
  }

  $async.Future<$0.NoReply> setRecentCampus_Pre($grpc.ServiceCall call, $async.Future<$0.SetRecentCampusReq> request) async {
    return setRecentCampus(call, await request);
  }

  $async.Future<$0.NoReply> subscribeCampus_Pre($grpc.ServiceCall call, $async.Future<$0.SubscribeCampusReq> request) async {
    return subscribeCampus(call, await request);
  }

  $async.Future<$0.TopicListReply> topicList_Pre($grpc.ServiceCall call, $async.Future<$0.TopicListReq> request) async {
    return topicList(call, await request);
  }

  $async.Future<$0.TopicSquareReply> topicSquare_Pre($grpc.ServiceCall call, $async.Future<$0.TopicSquareReq> request) async {
    return topicSquare(call, await request);
  }

  $async.Future<$0.NoReply> unfollowMatch_Pre($grpc.ServiceCall call, $async.Future<$0.UnfollowMatchReq> request) async {
    return unfollowMatch(call, await request);
  }

  $async.Future<$0.NoReply> updateTabSetting_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateTabSettingReq> request) async {
    return updateTabSetting(call, await request);
  }

  $async.Future<$0.AlumniDynamicsReply> alumniDynamics($grpc.ServiceCall call, $0.AlumniDynamicsReq request);
  $async.Future<$0.CampusBillBoardReply> campusBillBoard($grpc.ServiceCall call, $0.CampusBillBoardReq request);
  $async.Future<$0.CampusEntryTabResp> campusEntryTab($grpc.ServiceCall call, $0.CampusEntryTabReq request);
  $async.Future<$0.CampusFeedbackReply> campusFeedback($grpc.ServiceCall call, $0.CampusFeedbackReq request);
  $async.Future<$0.CampusHomePagesReply> campusHomePages($grpc.ServiceCall call, $0.CampusHomePagesReq request);
  $async.Future<$0.CampusMateLikeListReply> campusMateLikeList($grpc.ServiceCall call, $0.CampusMateLikeListReq request);
  $async.Future<$0.CampusMngDetailReply> campusMngDetail($grpc.ServiceCall call, $0.CampusMngDetailReq request);
  $async.Future<$0.CampusMngQuizOperateReply> campusMngQuizOperate($grpc.ServiceCall call, $0.CampusMngQuizOperateReq request);
  $async.Future<$0.CampusMngSubmitReply> campusMngSubmit($grpc.ServiceCall call, $0.CampusMngSubmitReq request);
  $async.Future<$0.CampusRcmdReply> campusRcmd($grpc.ServiceCall call, $0.CampusRcmdReq request);
  $async.Future<$0.CampusRcmdFeedReply> campusRcmdFeed($grpc.ServiceCall call, $0.CampusRcmdFeedReq request);
  $async.Future<$0.CampusRecommendReply> campusRecommend($grpc.ServiceCall call, $0.CampusRecommendReq request);
  $async.Future<$0.CampusRedDotReply> campusRedDot($grpc.ServiceCall call, $0.CampusRedDotReq request);
  $async.Future<$0.CampusSquareReply> campusSquare($grpc.ServiceCall call, $0.CampusSquareReq request);
  $async.Future<$0.CampusTopicRcmdFeedReply> campusTopicRcmdFeed($grpc.ServiceCall call, $0.CampusTopicRcmdFeedReq request);
  $async.Future<$0.DynAdditionCommonFollowReply> dynAdditionCommonFollow($grpc.ServiceCall call, $0.DynAdditionCommonFollowReq request);
  $async.Future<$0.DynAllReply> dynAll($grpc.ServiceCall call, $0.DynAllReq request);
  $async.Future<$0.DynAllPersonalReply> dynAllPersonal($grpc.ServiceCall call, $0.DynAllPersonalReq request);
  $async.Future<$0.NoReply> dynAllUpdOffset($grpc.ServiceCall call, $0.DynAllUpdOffsetReq request);
  $async.Future<$0.DynDetailReply> dynDetail($grpc.ServiceCall call, $0.DynDetailReq request);
  $async.Future<$0.DynDetailsReply> dynDetails($grpc.ServiceCall call, $0.DynDetailsReq request);
  $async.Future<$0.DynFakeCardReply> dynFakeCard($grpc.ServiceCall call, $0.DynFakeCardReq request);
  $async.Future<$0.DynFriendReply> dynFriend($grpc.ServiceCall call, $0.DynFriendReq request);
  $async.Future<$0.DynLightReply> dynLight($grpc.ServiceCall call, $0.DynLightReq request);
  $async.Future<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore($grpc.ServiceCall call, $0.DynMixUpListViewMoreReq request);
  $async.Future<$0.DynRcmdUpExchangeReply> dynRcmdUpExchange($grpc.ServiceCall call, $0.DynRcmdUpExchangeReq request);
  $async.Future<$0.DynSearchReply> dynSearch($grpc.ServiceCall call, $0.DynSearchReq request);
  $async.Future<$0.DynServerDetailsReply> dynServerDetails($grpc.ServiceCall call, $0.DynServerDetailsReq request);
  $async.Future<$0.DynSpaceRsp> dynSpace($grpc.ServiceCall call, $0.DynSpaceReq request);
  $async.Future<$0.DynSpaceSearchDetailsReply> dynSpaceSearchDetails($grpc.ServiceCall call, $0.DynSpaceSearchDetailsReq request);
  $async.Future<$0.DynTabReply> dynTab($grpc.ServiceCall call, $0.DynTabReq request);
  $async.Future<$0.NoReply> dynThumb($grpc.ServiceCall call, $0.DynThumbReq request);
  $async.Future<$0.DynRcmdReply> dynUnLoginRcmd($grpc.ServiceCall call, $0.DynRcmdReq request);
  $async.Future<$0.DynVideoReply> dynVideo($grpc.ServiceCall call, $0.DynVideoReq request);
  $async.Future<$0.DynVideoPersonalReply> dynVideoPersonal($grpc.ServiceCall call, $0.DynVideoPersonalReq request);
  $async.Future<$0.NoReply> dynVideoUpdOffset($grpc.ServiceCall call, $0.DynVideoUpdOffsetReq request);
  $async.Future<$0.DynVoteReply> dynVote($grpc.ServiceCall call, $0.DynVoteReq request);
  $async.Future<$0.FeedFilterReply> feedFilter($grpc.ServiceCall call, $0.FeedFilterReq request);
  $async.Future<$0.FetchTabSettingReply> fetchTabSetting($grpc.ServiceCall call, $0.NoReq request);
  $async.Future<$0.HomeSubscribeReply> homeSubscribe($grpc.ServiceCall call, $0.HomeSubscribeReq request);
  $async.Future<$0.LbsPoiReply> lbsPoi($grpc.ServiceCall call, $0.LbsPoiReq request);
  $async.Future<$0.LegacyTopicFeedReply> legacyTopicFeed($grpc.ServiceCall call, $0.LegacyTopicFeedReq request);
  $async.Future<$0.LikeListReply> likeList($grpc.ServiceCall call, $0.LikeListReq request);
  $async.Future<$0.OfficialAccountsReply> officialAccounts($grpc.ServiceCall call, $0.OfficialAccountsReq request);
  $async.Future<$0.OfficialDynamicsReply> officialDynamics($grpc.ServiceCall call, $0.OfficialDynamicsReq request);
  $async.Future<$0.ReactionListReply> reactionList($grpc.ServiceCall call, $0.ReactionListReq request);
  $async.Future<$0.RepostListRsp> repostList($grpc.ServiceCall call, $0.RepostListReq request);
  $async.Future<$0.SchoolRecommendReply> schoolRecommend($grpc.ServiceCall call, $0.SchoolRecommendReq request);
  $async.Future<$0.SchoolSearchReply> schoolSearch($grpc.ServiceCall call, $0.SchoolSearchReq request);
  $async.Future<$0.NoReply> setDecision($grpc.ServiceCall call, $0.SetDecisionReq request);
  $async.Future<$0.NoReply> setRecentCampus($grpc.ServiceCall call, $0.SetRecentCampusReq request);
  $async.Future<$0.NoReply> subscribeCampus($grpc.ServiceCall call, $0.SubscribeCampusReq request);
  $async.Future<$0.TopicListReply> topicList($grpc.ServiceCall call, $0.TopicListReq request);
  $async.Future<$0.TopicSquareReply> topicSquare($grpc.ServiceCall call, $0.TopicSquareReq request);
  $async.Future<$0.NoReply> unfollowMatch($grpc.ServiceCall call, $0.UnfollowMatchReq request);
  $async.Future<$0.NoReply> updateTabSetting($grpc.ServiceCall call, $0.UpdateTabSettingReq request);
}
