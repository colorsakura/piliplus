import 'dart:io';
import 'dart:ui';

import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/models_new/live/live_room_info_h5/data.dart';
import 'package:PiliPlus/pages/live_room/controller.dart';
import 'package:PiliPlus/pages/live_room/send_danmaku/view.dart';
import 'package:PiliPlus/pages/live_room/widgets/bottom_control.dart';
import 'package:PiliPlus/pages/live_room/widgets/chat.dart';
import 'package:PiliPlus/pages/live_room/widgets/header_control.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:PiliPlus/plugin/pl_player/utils/fullscreen.dart';
import 'package:PiliPlus/plugin/pl_player/view.dart';
import 'package:PiliPlus/plugin/pl_player/widgets/common_btn.dart';
import 'package:PiliPlus/services/service_locator.dart';
import 'package:PiliPlus/utils/duration_util.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:canvas_danmaku/canvas_danmaku.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:screen_brightness/screen_brightness.dart';

class LiveRoomPage extends StatefulWidget {
  const LiveRoomPage({super.key});

  @override
  State<LiveRoomPage> createState() => _LiveRoomPageState();
}

class _LiveRoomPageState extends State<LiveRoomPage>
    with WidgetsBindingObserver, RouteAware {
  final String heroTag = Utils.generateRandomString(6);
  late final LiveRoomController _liveRoomController;
  late final PlPlayerController plPlayerController;
  bool get isFullScreen => plPlayerController.isFullScreen.value;

  final GlobalKey chatKey = GlobalKey();
  final GlobalKey playerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _liveRoomController = Get.put(
      LiveRoomController(heroTag),
      tag: heroTag,
    );
    plPlayerController = _liveRoomController.plPlayerController;
    PlPlayerController.setPlayCallBack(plPlayerController.play);
    plPlayerController
      ..autoEnterFullscreen()
      ..addStatusLister(playerListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    PageUtils.routeObserver.subscribe(
      this,
      ModalRoute.of(context)! as PageRoute,
    );
  }

  @override
  Future<void> didPopNext() async {
    WidgetsBinding.instance.addObserver(this);
    PlPlayerController.setPlayCallBack(plPlayerController.play);
    plPlayerController.danmakuController =
        _liveRoomController.danmakuController;
    _liveRoomController.startLiveTimer();
    if (plPlayerController.playerStatus.playing) {
      _liveRoomController
        ..danmakuController?.resume()
        ..startLiveMsg();
    } else {
      final shouldPlay = _liveRoomController.isPlaying ?? false;
      if (shouldPlay) {
        _liveRoomController
          ..danmakuController?.resume()
          ..startLiveMsg();
      }
      await _liveRoomController.playerInit(autoplay: shouldPlay);
    }
    plPlayerController.addStatusLister(playerListener);

    super.didPopNext();
  }

  @override
  void didPushNext() {
    WidgetsBinding.instance.removeObserver(this);
    plPlayerController.removeStatusLister(playerListener);
    _liveRoomController
      ..danmakuController?.clear()
      ..danmakuController?.pause()
      ..cancelLiveTimer()
      ..closeLiveMsg()
      ..isPlaying = plPlayerController.playerStatus.playing;
    super.didPushNext();
  }

  void playerListener(PlayerStatus? status) {
    if (status == PlayerStatus.playing) {
      _liveRoomController
        ..danmakuController?.resume()
        ..startLiveTimer()
        ..startLiveMsg();
    } else {
      _liveRoomController
        ..danmakuController?.pause()
        ..cancelLiveTimer()
        ..closeLiveMsg();
    }
  }

  @override
  void dispose() {
    videoPlayerServiceHandler.onVideoDetailDispose(heroTag);
    WidgetsBinding.instance.removeObserver(this);
    ScreenBrightness.instance.resetApplicationScreenBrightness();
    PlPlayerController.setPlayCallBack(null);
    plPlayerController
      ..removeStatusLister(playerListener)
      ..dispose();
    PageUtils.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!plPlayerController.showDanmaku) {
        _liveRoomController.startLiveTimer();
        plPlayerController.showDanmaku = true;
        if (isFullScreen && Platform.isIOS) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!_liveRoomController.isPortrait.value) {
              landScape();
            }
          });
        }
      }
    } else if (state == AppLifecycleState.paused) {
      _liveRoomController.cancelLiveTimer();
      plPlayerController
        ..showDanmaku = false
        ..danmakuController?.clear();
    }
  }

  late double maxWidth;
  late double maxHeight;
  late EdgeInsets padding;
  late bool isPortrait;

  @override
  Widget build(BuildContext context) {
    padding = MediaQuery.viewPaddingOf(context);
    final size = MediaQuery.sizeOf(context);
    maxWidth = size.width;
    maxHeight = size.height;
    isPortrait = maxHeight >= maxWidth;
    if (Platform.isAndroid) {
      return Floating().isPipMode
          ? videoPlayerPanel(
              isFullScreen,
              width: maxWidth,
              height: maxHeight,
              isPipMode: true,
            )
          : childWhenDisabled;
    } else {
      return childWhenDisabled;
    }
  }

  Widget videoPlayerPanel(
    bool isFullScreen, {
    required double width,
    required double height,
    bool isPipMode = false,
    Color? fill,
    Alignment? alignment,
    bool needDm = true,
  }) {
    _liveRoomController.isFullScreen = isFullScreen;
    return PopScope(
      canPop: !isFullScreen,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (isFullScreen) {
          plPlayerController.triggerFullScreen(status: false);
        }
      },
      child: Obx(() {
        if (_liveRoomController.isLoaded.value) {
          final roomInfoH5 = _liveRoomController.roomInfoH5.value;
          return PLVideoPlayer(
            key: playerKey,
            maxWidth: width,
            maxHeight: height,
            fill: fill,
            alignment: alignment,
            plPlayerController: plPlayerController,
            headerControl: LiveHeaderControl(
              title: roomInfoH5?.roomInfo?.title,
              upName: roomInfoH5?.anchorInfo?.baseInfo?.uname,
              plPlayerController: plPlayerController,
              onSendDanmaku: onSendDanmaku,
              onPlayAudio: _liveRoomController.queryLiveUrl,
            ),
            bottomControl: BottomControl(
              plPlayerController: plPlayerController,
              liveRoomCtr: _liveRoomController,
              onRefresh: _liveRoomController.queryLiveUrl,
            ),
            danmuWidget: !needDm
                ? null
                : LiveDanmaku(
                    liveRoomController: _liveRoomController,
                    plPlayerController: plPlayerController,
                    isFullScreen: isFullScreen,
                    isPipMode: isPipMode,
                  ),
          );
        }
        return const SizedBox.shrink();
      }),
    );
  }

  SystemUiOverlayStyle _systemOverlayStyleForBrightness(
    Brightness brightness, [
    Color? backgroundColor,
  ]) {
    final SystemUiOverlayStyle style = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;
    // For backward compatibility, create an overlay style without system navigation bar settings.
    return SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
      statusBarBrightness: style.statusBarBrightness,
      statusBarIconBrightness: style.statusBarIconBrightness,
      systemStatusBarContrastEnforced: style.systemStatusBarContrastEnforced,
    );
  }

  Widget get childWhenDisabled {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: _systemOverlayStyleForBrightness(
        Brightness.dark,
        Theme.of(context).useMaterial3 ? const Color(0x00000000) : null,
      ),
      child: ColoredBox(
        color: Colors.black,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Obx(
              () {
                if (isFullScreen) {
                  return const SizedBox.shrink();
                }
                final appBackground = _liveRoomController
                    .roomInfoH5
                    .value
                    ?.roomInfo
                    ?.appBackground;
                Widget child;
                if (appBackground?.isNotEmpty == true) {
                  child = CachedNetworkImage(
                    fit: BoxFit.cover,
                    width: maxWidth,
                    height: maxHeight,
                    imageUrl: appBackground!.http2https,
                  );
                } else {
                  child = Image.asset(
                    'assets/images/live/default_bg.webp',
                    fit: BoxFit.cover,
                  );
                }
                return Positioned.fill(
                  child: Opacity(opacity: 0.6, child: child),
                );
              },
            ),
            if (isPortrait)
              Obx(
                () {
                  if (_liveRoomController.isPortrait.value) {
                    return _buildPP;
                  }
                  return _buildPH;
                },
              )
            else
              _buildBodyH,
          ],
        ),
      ),
    );
  }

  Widget get _buildPH {
    final isFullScreen = this.isFullScreen;
    final height = maxWidth * 9 / 16;
    final videoHeight = isFullScreen ? maxHeight : height;
    return Column(
      children: [
        Offstage(
          offstage: isFullScreen,
          child: _buildAppBar,
        ),
        SizedBox(
          width: maxWidth,
          height: videoHeight,
          child: videoPlayerPanel(
            isFullScreen,
            width: maxWidth,
            height: videoHeight,
          ),
        ),
        Offstage(
          offstage: isFullScreen,
          child: SizedBox(
            width: maxWidth,
            height: maxHeight - padding.top - height - kToolbarHeight,
            child: _buildBottomWidget,
          ),
        ),
      ],
    );
  }

  Widget get _buildPP {
    final isFullScreen = this.isFullScreen;
    final bottomHeight = 80.0 + padding.bottom;
    final topPadding = padding.top + kToolbarHeight;
    final videoHeight = maxHeight - bottomHeight - topPadding;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          top: isFullScreen ? 0 : topPadding,
          bottom: isFullScreen ? 0 : bottomHeight,
          child: videoPlayerPanel(
            width: maxWidth,
            height: videoHeight,
            isFullScreen,
            needDm: isFullScreen,
            alignment: isFullScreen ? null : Alignment.topCenter,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Offstage(
            offstage: isFullScreen,
            child: _buildAppBar,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 55 + bottomHeight,
          child: Offstage(
            offstage: isFullScreen,
            child: SizedBox(
              height: maxHeight * 0.32,
              child: _buildChatWidget(true),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Offstage(
            offstage: isFullScreen,
            child: SizedBox(
              height: bottomHeight,
              child: _buildInputWidget,
            ),
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget get _buildAppBar {
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(color: Colors.white),
      title: Obx(
        () {
          RoomInfoH5Data? roomInfoH5 = _liveRoomController.roomInfoH5.value;
          if (roomInfoH5 == null) {
            return const SizedBox.shrink();
          }
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Get.toNamed('/member?mid=${roomInfoH5.roomInfo?.uid}'),
            child: Row(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                NetworkImgLayer(
                  width: 34,
                  height: 34,
                  type: ImageType.avatar,
                  src: roomInfoH5.anchorInfo!.baseInfo!.face,
                ),
                Column(
                  spacing: 1,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      roomInfoH5.anchorInfo!.baseInfo!.uname!,
                      style: const TextStyle(fontSize: 14),
                    ),
                    Obx(() {
                      final liveTime = _liveRoomController.liveTime.value;
                      final textLarge = roomInfoH5.watchedShow?.textLarge;
                      String text = '';
                      if (textLarge != null) {
                        text += textLarge;
                      }
                      if (liveTime != null) {
                        if (text.isNotEmpty) {
                          text += '  ';
                        }
                        final duration = DurationUtil.formatDurationBetween(
                          liveTime * 1000,
                          DateTime.now().millisecondsSinceEpoch,
                        );
                        text += duration.isEmpty ? '刚刚开播' : '开播$duration';
                      }
                      if (text.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return Text(text, style: const TextStyle(fontSize: 12));
                    }),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        // IconButton(
        //   tooltip: '刷新',
        //   onPressed: _liveRoomController.queryLiveUrl,
        //   icon: const Icon(Icons.refresh, size: 20),
        // ),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert, size: 20),
          itemBuilder: (BuildContext context) {
            final liveUrl =
                'https://live.bilibili.com/${_liveRoomController.roomId}';
            return <PopupMenuEntry>[
              PopupMenuItem(
                onTap: () => Utils.copyText(liveUrl),
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.copy,
                      size: 19,
                      color: color,
                    ),
                    const Text('复制链接'),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () => Utils.shareText(liveUrl),
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.share,
                      size: 19,
                      color: color,
                    ),
                    const Text('分享直播间'),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () => PageUtils.inAppWebview(liveUrl, off: true),
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.open_in_browser,
                      size: 19,
                      color: color,
                    ),
                    const Text('浏览器打开'),
                  ],
                ),
              ),
              if (_liveRoomController.roomInfoH5.value != null)
                PopupMenuItem(
                  onTap: () {
                    try {
                      RoomInfoH5Data roomInfo =
                          _liveRoomController.roomInfoH5.value!;
                      PageUtils.pmShare(
                        this.context,
                        content: {
                          "cover": roomInfo.roomInfo!.cover!,
                          "sourceID": _liveRoomController.roomId.toString(),
                          "title": roomInfo.roomInfo!.title!,
                          "url": liveUrl,
                          "authorID": roomInfo.roomInfo!.uid.toString(),
                          "source": "直播",
                          "desc": roomInfo.roomInfo!.title!,
                          "author": roomInfo.anchorInfo!.baseInfo!.uname,
                        },
                      );
                    } catch (e) {
                      SmartDialog.showToast(e.toString());
                    }
                  },
                  child: Row(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.forward_to_inbox,
                        size: 19,
                        color: color,
                      ),
                      const Text('分享至消息'),
                    ],
                  ),
                ),
            ];
          },
        ),
      ],
    );
  }

  Widget get _buildBodyH {
    final videoWidth =
        clampDouble(maxHeight / maxWidth * 1.08, 0.58, 0.75) * maxWidth;
    final videoHeight = maxHeight - padding.top;
    return Obx(
      () {
        final isFullScreen = this.isFullScreen;
        final width = isFullScreen ? maxWidth : videoWidth;
        final height = isFullScreen ? maxHeight : videoHeight;
        return Column(
          children: [
            Offstage(
              offstage: isFullScreen,
              child: _buildAppBar,
            ),
            Expanded(
              child: Padding(
                padding: isFullScreen
                    ? EdgeInsets.zero
                    : EdgeInsets.only(left: padding.left, right: padding.right),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: padding.bottom),
                      width: width,
                      height: height,
                      child: videoPlayerPanel(
                        isFullScreen,
                        fill: Colors.transparent,
                        width: width,
                        height: height,
                      ),
                    ),
                    Offstage(
                      offstage: isFullScreen,
                      child: SizedBox(
                        width: maxWidth - videoWidth - padding.horizontal,
                        height: videoHeight,
                        child: _buildBottomWidget,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget get _buildBottomWidget => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(child: _buildChatWidget()),
      _buildInputWidget,
    ],
  );

  Widget _buildChatWidget([bool isPP = false]) => Padding(
    padding: EdgeInsets.only(bottom: 16, top: !isPortrait ? 0 : 16),
    child: LiveRoomChat(
      key: chatKey,
      isPP: isPP,
      roomId: _liveRoomController.roomId,
      liveRoomController: _liveRoomController,
    ),
  );

  Widget get _buildInputWidget => Container(
    padding: EdgeInsets.only(
      top: 5,
      left: 10,
      right: 10,
      bottom: 15 + padding.bottom,
    ),
    height: 80 + padding.bottom,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      border: Border(
        top: BorderSide(color: Color(0x1AFFFFFF)),
      ),
      color: Color(0x1AFFFFFF),
    ),
    child: GestureDetector(
      onTap: onSendDanmaku,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Row(
          spacing: 6,
          children: [
            Obx(
              () {
                final enableShowDanmaku =
                    plPlayerController.enableShowDanmaku.value;
                return ComBtn(
                  onTap: () {
                    final newVal = !enableShowDanmaku;
                    plPlayerController.enableShowDanmaku.value = newVal;
                    if (!plPlayerController.tempPlayerConf) {
                      GStorage.setting.put(
                        SettingBoxKey.enableShowDanmaku,
                        newVal,
                      );
                    }
                  },
                  icon: enableShowDanmaku
                      ? const Icon(
                          size: 22,
                          Icons.subtitles_outlined,
                          color: Color(0xFFEEEEEE),
                        )
                      : const Icon(
                          size: 22,
                          Icons.subtitles_off_outlined,
                          color: Color(0xFFEEEEEE),
                        ),
                );
              },
            ),
            const Expanded(
              child: Text(
                '发送弹幕',
                style: TextStyle(color: Color(0xFFEEEEEE)),
              ),
            ),
            Builder(
              builder: (context) {
                final theme = Theme.of(context).colorScheme;
                return Material(
                  type: MaterialType.transparency,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        overlayColor: overlayColor(theme),
                        customBorder: const CircleBorder(),
                        onTapDown: _liveRoomController.onLikeTapDown,
                        onTapUp: _liveRoomController.onLikeTapUp,
                        onTapCancel: _liveRoomController.onLikeTapUp,
                        child: const SizedBox.square(
                          dimension: 34,
                          child: Icon(
                            size: 22,
                            color: Color(0xFFEEEEEE),
                            Icons.thumb_up_off_alt,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -12,
                        top: -12,
                        child: Obx(() {
                          final likeClickTime =
                              _liveRoomController.likeClickTime.value;
                          if (likeClickTime == 0) {
                            return const SizedBox.shrink();
                          }
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 160),
                            transitionBuilder: (child, animation) {
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                              );
                            },
                            child: Text(
                              key: ValueKey(likeClickTime),
                              'x$likeClickTime',
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.brightness.isDark
                                    ? theme.primary
                                    : theme.inversePrimary,
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                );
              },
            ),
            ComBtn(
              onTap: () => onSendDanmaku(true),
              icon: const Icon(
                size: 22,
                color: Color(0xFFEEEEEE),
                Icons.emoji_emotions_outlined,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  WidgetStateProperty<Color?>? overlayColor(ColorScheme theme) =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          if (states.contains(WidgetState.pressed)) {
            return theme.primary.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.hovered)) {
            return theme.primary.withValues(alpha: 0.08);
          }
          if (states.contains(WidgetState.focused)) {
            return theme.primary.withValues(alpha: 0.1);
          }
        }
        if (states.contains(WidgetState.pressed)) {
          return theme.onSurfaceVariant.withValues(alpha: 0.1);
        }
        if (states.contains(WidgetState.hovered)) {
          return theme.onSurfaceVariant.withValues(alpha: 0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return theme.onSurfaceVariant.withValues(alpha: 0.1);
        }
        return Colors.transparent;
      });

  void onSendDanmaku([bool fromEmote = false]) {
    if (!_liveRoomController.isLogin) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    Get.generalDialog(
      barrierLabel: '',
      barrierDismissible: true,
      pageBuilder: (context, animation, secondaryAnimation) {
        return LiveSendDmPanel(
          fromEmote: fromEmote,
          liveRoomController: _liveRoomController,
          items: _liveRoomController.savedDanmaku,
          onSave: (msg) {
            if (msg.isEmpty) {
              _liveRoomController
                ..savedDanmaku?.clear()
                ..savedDanmaku = null;
            } else {
              _liveRoomController.savedDanmaku = msg.toList();
            }
          },
        );
      },
      transitionDuration: fromEmote
          ? const Duration(milliseconds: 400)
          : const Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.linear));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class LiveDanmaku extends StatefulWidget {
  final LiveRoomController liveRoomController;
  final PlPlayerController plPlayerController;
  final bool isPipMode;
  final bool isFullScreen;

  const LiveDanmaku({
    super.key,
    required this.liveRoomController,
    required this.plPlayerController,
    this.isPipMode = false,
    required this.isFullScreen,
  });

  @override
  State<LiveDanmaku> createState() => _LiveDanmakuState();
}

class _LiveDanmakuState extends State<LiveDanmaku> {
  PlPlayerController get plPlayerController => widget.plPlayerController;

  @override
  void didUpdateWidget(LiveDanmaku oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPipMode != widget.isPipMode ||
        oldWidget.isFullScreen != widget.isFullScreen) {
      _updateFontSize();
    }
  }

  void _updateFontSize() {
    plPlayerController.danmakuController?.updateOption(
      plPlayerController.danmakuController!.option.copyWith(
        fontSize: _fontSize,
      ),
    );
  }

  double get _fontSize => !widget.isFullScreen || widget.isPipMode
      ? 15 * plPlayerController.danmakuFontScale
      : 15 * plPlayerController.danmakuFontScaleFS;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return AnimatedOpacity(
          opacity: plPlayerController.enableShowDanmaku.value ? 1 : 0,
          duration: const Duration(milliseconds: 100),
          child: DanmakuScreen(
            createdController: (DanmakuController e) {
              widget.liveRoomController.danmakuController =
                  plPlayerController.danmakuController = e;
            },
            option: DanmakuOption(
              fontSize: _fontSize,
              fontWeight: plPlayerController.fontWeight,
              area: plPlayerController.showArea,
              opacity: plPlayerController.danmakuOpacity,
              hideTop: plPlayerController.blockTypes.contains(5),
              hideScroll: plPlayerController.blockTypes.contains(2),
              hideBottom: plPlayerController.blockTypes.contains(4),
              duration:
                  plPlayerController.danmakuDuration /
                  plPlayerController.playbackSpeed,
              staticDuration:
                  plPlayerController.danmakuStaticDuration /
                  plPlayerController.playbackSpeed,
              strokeWidth: plPlayerController.strokeWidth,
              lineHeight: plPlayerController.danmakuLineHeight,
            ),
          ),
        );
      },
    );
  }
}
