import 'dart:io';

import 'package:PiliPalaX/http/live.dart';
import 'package:PiliPalaX/pages/live_room/widgets/chat.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/plugin/pl_player/index.dart';

import '../../utils/storage.dart';
import 'controller.dart';
import 'widgets/bottom_control.dart';

class LiveRoomPage extends StatefulWidget {
  const LiveRoomPage({super.key});

  @override
  State<LiveRoomPage> createState() => _LiveRoomPageState();
}

class _LiveRoomPageState extends State<LiveRoomPage> {
  final LiveRoomController _liveRoomController = Get.put(LiveRoomController());
  PlPlayerController? plPlayerController;
  late Future? _futureBuilder;
  late Future? _futureBuilderFuture;

  bool isShowCover = true;
  bool isPlay = true;
  Floating? floating;

  late final _isLogin = GStorage.userInfo.get('userInfoCache') != null;
  late final _ctr = TextEditingController();

  void playCallBack() {
    plPlayerController?.play();
  }

  @override
  void initState() {
    super.initState();
    PlPlayerController.setPlayCallBack(playCallBack);
    if (Platform.isAndroid) {
      floating = Floating();
    }
    videoSourceInit();
    _futureBuilderFuture = _liveRoomController.queryLiveInfo();
    plPlayerController!.autoEnterFullscreen();
  }

  Future<void> videoSourceInit() async {
    _futureBuilder = _liveRoomController.queryLiveInfoH5();
    plPlayerController = _liveRoomController.plPlayerController;
  }

  @override
  void dispose() {
    PlPlayerController.setPlayCallBack(null);
    floating?.dispose();
    plPlayerController?.dispose();
    _ctr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget videoPlayerPanel = FutureBuilder(
      future: _futureBuilderFuture,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData && snapshot.data['status']) {
          return PLVideoPlayer(
            controller: plPlayerController!,
            bottomControl: BottomControl(
              controller: plPlayerController,
              liveRoomCtr: _liveRoomController,
              floating: floating,
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );

    Widget childWhenDisabled = Scaffold(
      primary: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/live/default_bg.webp',
                fit: BoxFit.cover,
                // width: Get.width,
                // height: Get.height,
              ),
            ),
          ),
          Obx(
            () => Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _liveRoomController
                              .roomInfoH5.value.roomInfo?.appBackground !=
                          '' &&
                      _liveRoomController
                              .roomInfoH5.value.roomInfo?.appBackground !=
                          null
                  ? Opacity(
                      opacity: 0.6,
                      child: NetworkImgLayer(
                        width: Get.width,
                        height: Get.height,
                        type: 'bg',
                        src: _liveRoomController
                                .roomInfoH5.value.roomInfo?.appBackground ??
                            '',
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          Column(
            children: [
              AppBar(
                centerTitle: false,
                titleSpacing: 0,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                toolbarHeight:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 56
                        : 0,
                title: FutureBuilder(
                  future: _futureBuilder,
                  builder: (context, snapshot) {
                    if (snapshot.data == null) {
                      return const SizedBox();
                    }
                    Map data = snapshot.data as Map;
                    if (data['status']) {
                      return Obx(
                        () => Row(
                          children: [
                            NetworkImgLayer(
                              width: 34,
                              height: 34,
                              type: 'avatar',
                              src: _liveRoomController
                                  .roomInfoH5.value.anchorInfo!.baseInfo!.face,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _liveRoomController.roomInfoH5.value
                                      .anchorInfo!.baseInfo!.uname!,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 1),
                                if (_liveRoomController
                                        .roomInfoH5.value.watchedShow !=
                                    null)
                                  Text(
                                    _liveRoomController.roomInfoH5.value
                                            .watchedShow!['text_large'] ??
                                        '',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                              ],
                            ),
                            const Spacer(),
                            //刷新
                            IconButton(
                              tooltip: '刷新',
                              onPressed: () {
                                _futureBuilderFuture =
                                    _liveRoomController.queryLiveInfo();
                                // videoSourceInit();
                              },
                              icon: const Icon(Icons.refresh),
                            ),
                            //内置浏览器打开
                            IconButton(
                                tooltip: '内置浏览器打开',
                                onPressed: () {
                                  Get.offNamed(
                                    '/webviewnew',
                                    parameters: {
                                      'url':
                                          'https://live.bilibili.com/h5/${_liveRoomController.roomId}',
                                      'type': 'liveRoom',
                                      'pageTitle': _liveRoomController
                                          .roomInfoH5
                                          .value
                                          .anchorInfo!
                                          .baseInfo!
                                          .uname!,
                                    },
                                  );
                                },
                                icon: const Icon(Icons.open_in_browser)),
                          ],
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
              PopScope(
                canPop: plPlayerController?.isFullScreen.value != true,
                onPopInvokedWithResult: (bool didPop, Object? result) {
                  if (plPlayerController?.isFullScreen.value == true) {
                    plPlayerController!.triggerFullScreen(status: false);
                  }
                  if (MediaQuery.of(context).orientation ==
                      Orientation.landscape) {
                    verticalScreenForTwoSeconds();
                  }
                },
                child: SizedBox(
                  width: Get.size.width,
                  height: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? Get.size.height
                      : Get.size.width * 9 / 16,
                  child: videoPlayerPanel,
                ),
              ),
              Expanded(
                child: LiveRoomChat(
                  roomId: int.parse(Get.parameters['roomid']!),
                  liveRoomController: _liveRoomController,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 25 + MediaQuery.of(context).padding.bottom,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  border: Border(
                    top: BorderSide(color: Color(0x1AFFFFFF)),
                  ),
                  color: Color(0x1AFFFFFF),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _ctr,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (value) {
                          if (value.isNotEmpty) {
                            _onSendMsg(value);
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '发送弹幕',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (_ctr.text.isNotEmpty) {
                          _onSendMsg(_ctr.text);
                        }
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    if (Platform.isAndroid) {
      return PiPSwitcher(
        childWhenDisabled: childWhenDisabled,
        childWhenEnabled: videoPlayerPanel,
        floating: floating,
      );
    } else {
      return childWhenDisabled;
    }
  }

  void _onSendMsg(msg) async {
    if (!_isLogin) {
      SmartDialog.showToast('未登录');
      return;
    }
    dynamic res = await LiveHttp.sendLiveMsg(
        roomId: _liveRoomController.roomId, msg: msg);
    if (res['status']) {
      _ctr.clear();
      SmartDialog.showToast('发送成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
