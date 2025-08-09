import 'dart:async';
import 'dart:convert';

import 'package:PiliPlus/common/widgets/text_field/controller.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/common/video/live_quality.dart';
import 'package:PiliPlus/models_new/live/live_dm_info/data.dart';
import 'package:PiliPlus/models_new/live/live_room_info_h5/data.dart';
import 'package:PiliPlus/models_new/live/live_room_play_info/codec.dart';
import 'package:PiliPlus/models_new/live/live_room_play_info/data.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/plugin/pl_player/models/data_source.dart';
import 'package:PiliPlus/services/account_service.dart';
import 'package:PiliPlus/services/service_locator.dart';
import 'package:PiliPlus/tcp/live.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/danmaku_utils.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/video_utils.dart';
import 'package:canvas_danmaku/canvas_danmaku.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class LiveRoomController extends GetxController {
  LiveRoomController(this.heroTag);
  final String heroTag;

  int roomId = Get.arguments;
  PlPlayerController plPlayerController = PlPlayerController.getInstance(
    isLive: true,
  );

  RxBool isLoaded = false.obs;
  Rx<RoomInfoH5Data?> roomInfoH5 = Rx<RoomInfoH5Data?>(null);

  Rx<int?> liveTime = Rx<int?>(null);
  Timer? liveTimeTimer;

  void startLiveTimer() {
    if (liveTime.value != null) {
      liveTimeTimer ??= Timer.periodic(
        const Duration(minutes: 5),
        (_) => liveTime.refresh(),
      );
    }
  }

  void cancelLiveTimer() {
    liveTimeTimer?.cancel();
    liveTimeTimer = null;
  }

  // dm
  LiveDmInfoData? dmInfo;
  List<RichTextItem>? savedDanmaku;
  RxList<dynamic> messages = [].obs;
  RxBool disableAutoScroll = false.obs;
  LiveMessageStream? msgStream;
  late final ScrollController scrollController = ScrollController()
    ..addListener(listener);

  int? currentQn;
  RxString currentQnDesc = ''.obs;
  final RxBool isPortrait = false.obs;
  late List<({int code, String desc})> acceptQnList = [];

  late final isLogin = accountService.isLogin.value;
  AccountService accountService = Get.find<AccountService>();

  @override
  void onInit() {
    super.onInit();
    queryLiveUrl();
    queryLiveInfoH5();
    if (Accounts.heartbeat.isLogin && !Pref.historyPause) {
      VideoHttp.roomEntryAction(roomId: roomId);
    }
  }

  Future<void> playerInit(String source) {
    return plPlayerController.setDataSource(
      DataSource(
        videoSource: source,
        audioSource: null,
        type: DataSourceType.network,
        httpHeaders: {
          'user-agent':
              'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_3_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Safari/605.1.15',
          'referer': HttpString.baseUrl,
        },
      ),
      autoplay: true,
      isVertical: isPortrait.value,
    );
  }

  Future<void> queryLiveUrl() async {
    if (currentQn == null) {
      await Connectivity().checkConnectivity().then((res) {
        currentQn = res.contains(ConnectivityResult.wifi)
            ? Pref.liveQuality
            : Pref.liveQualityCellular;
      });
    }
    var res = await LiveHttp.liveRoomInfo(
      roomId: roomId,
      qn: currentQn,
      onlyAudio: plPlayerController.onlyPlayAudio.value,
    );
    if (res['status']) {
      RoomPlayInfoData data = res['data'];
      if (data.liveStatus != 1) {
        _showDialog('当前直播间未开播');
        return;
      }
      if (data.roomId != null) {
        roomId = data.roomId!;
      }
      liveTime.value = data.liveTime;
      startLiveTimer();
      isPortrait.value = data.isPortrait ?? false;
      List<CodecItem> codec =
          data.playurlInfo!.playurl!.stream!.first.format!.first.codec!;
      CodecItem item = codec.first;
      // 以服务端返回的码率为准
      currentQn = item.currentQn!;
      acceptQnList = item.acceptQn!.map((e) {
        return (
          code: e,
          desc:
              LiveQuality.values
                  .firstWhereOrNull((element) => element.code == e)
                  ?.description ??
              e.toString(),
        );
      }).toList();
      currentQnDesc.value =
          LiveQuality.values
              .firstWhereOrNull((element) => element.code == currentQn)
              ?.description ??
          currentQn.toString();
      String videoUrl = VideoUtils.getCdnUrl(item);
      await playerInit(videoUrl);
      isLoaded.value = true;
    }
  }

  Future<void> queryLiveInfoH5() async {
    var res = await LiveHttp.liveRoomInfoH5(roomId: roomId);
    if (res['status']) {
      RoomInfoH5Data data = res['data'];
      roomInfoH5.value = data;
      videoPlayerServiceHandler.onVideoDetailChange(data, roomId, heroTag);
    } else {
      if (res['msg'] != null) {
        _showDialog(res['msg']);
      }
    }
  }

  void _showDialog(String title) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        actions: [
          TextButton(
            onPressed: Get.back,
            child: Text(
              '关闭',
              style: TextStyle(color: Get.theme.colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () => Get
              ..back()
              ..back(),
            child: const Text('退出'),
          ),
        ],
      ),
    );
  }

  void scrollToBottom() {
    if (disableAutoScroll.value) return;
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      );
    }
  }

  void liveMsg() {
    if (messages.isEmpty) {
      LiveHttp.liveRoomDanmaPrefetch(roomId: roomId).then((v) {
        if (v['status']) {
          if ((v['data'] as List?)?.isNotEmpty == true) {
            try {
              messages.addAll(
                (v['data'] as List)
                    .map(
                      (obj) => {
                        'name': obj['user']['base']['name'],
                        'uid': obj['user']['uid'],
                        'text': obj['text'],
                        'emots': obj['emots'],
                        'uemote': obj['emoticon']['emoticon_unique'] != ""
                            ? obj['emoticon']
                            : null,
                      },
                    )
                    .toList(),
              );
              WidgetsBinding.instance.addPostFrameCallback(
                (_) => scrollToBottom(),
              );
            } catch (_) {}
          }
        }
      });
    }
    if (msgStream != null) {
      return;
    }
    if (dmInfo != null) {
      initDm(dmInfo!);
      return;
    }
    LiveHttp.liveRoomGetDanmakuToken(roomId: roomId).then((res) {
      if (res['status']) {
        dmInfo = res['data'];
        initDm(dmInfo!);
      }
    });
  }

  void listener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      disableAutoScroll.value = true;
    } else if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      final pos = scrollController.position;
      if (pos.maxScrollExtent - pos.pixels <= 100) {
        disableAutoScroll.value = false;
      }
    }
  }

  @override
  void onClose() {
    cancelLikeTimer();
    cancelLiveTimer();
    savedDanmaku?.clear();
    savedDanmaku = null;
    msgStream?.close();
    msgStream = null;
    scrollController
      ..removeListener(listener)
      ..dispose();
    super.onClose();
  }

  // 修改画质
  FutureOr<void> changeQn(int qn) {
    if (currentQn == qn) {
      return null;
    }
    currentQn = qn;
    currentQnDesc.value =
        LiveQuality.values
            .firstWhereOrNull((element) => element.code == currentQn)
            ?.description ??
        currentQn.toString();
    return queryLiveUrl();
  }

  void initDm(LiveDmInfoData info) {
    if (info.hostList.isNullOrEmpty) {
      return;
    }
    msgStream =
        LiveMessageStream(
            streamToken: info.token!,
            roomId: roomId,
            uid: Accounts.main.mid,
            servers: info.hostList!
                .map((host) => 'wss://${host.host}:${host.wssPort}/sub')
                .toList(),
          )
          ..addEventListener((obj) {
            try {
              if (obj['cmd'] == 'DANMU_MSG') {
                // logger.i(' 原始弹幕消息 ======> ${jsonEncode(obj)}');
                final info = obj['info'];
                final first = info[0];
                final content = first[15];
                final extra = jsonDecode(content['extra']);
                final user = content['user'];
                final uid = user['uid'];
                messages.add({
                  'name': user['base']['name'],
                  'uid': uid,
                  'text': info[1],
                  'emots': extra['emots'],
                  'uemote': first[13],
                });

                if (plPlayerController.showDanmaku) {
                  plPlayerController.danmakuController?.addDanmaku(
                    DanmakuContentItem(
                      extra['content'],
                      color: DmUtils.decimalToColor(extra['color']),
                      type: DmUtils.getPosition(extra['mode']),
                      selfSend: isLogin && uid == accountService.mid,
                    ),
                  );
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => scrollToBottom(),
                  );
                }
              }
            } catch (_) {}
          })
          ..init();
  }

  final RxInt likeClickTime = 0.obs;
  Timer? likeClickTimer;

  void cancelLikeTimer() {
    likeClickTimer?.cancel();
    likeClickTimer = null;
  }

  void onLikeTapDown([_]) {
    cancelLikeTimer();
    likeClickTime.value++;
  }

  void onLikeTapUp([_]) {
    likeClickTimer ??= Timer(
      const Duration(milliseconds: 800),
      onLike,
    );
  }

  Future<void> onLike() async {
    if (!Accounts.heartbeat.isLogin) {
      likeClickTime.value = 0;
      return;
    }
    var res = await LiveHttp.liveLikeReport(
      clickTime: likeClickTime.value,
      roomId: roomId,
      uid: accountService.mid,
      anchorId: roomInfoH5.value?.roomInfo?.uid,
    );
    if (res['status']) {
      SmartDialog.showToast('点赞成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
    likeClickTime.value = 0;
  }
}
