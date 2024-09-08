import 'dart:async';

import 'package:PiliPalaX/http/loading_state.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/skeleton/video_card_v.dart';
import 'package:PiliPalaX/common/widgets/animated_dialog.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/main/index.dart';

import '../../utils/grid.dart';
import 'controller.dart';
import 'widgets/live_item.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage>
    with AutomaticKeepAliveClientMixin {
  final LiveController _liveController = Get.put(LiveController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _liveController.scrollController.addListener(
      () {
        if (_liveController.scrollController.position.pixels >=
            _liveController.scrollController.position.maxScrollExtent - 200) {
          EasyThrottle.throttle('liveList', const Duration(milliseconds: 200),
              () {
            _liveController.onLoadMore();
          });
        }

        final ScrollDirection direction =
            _liveController.scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          mainStream.add(true);
          searchBarStream.add(true);
        } else if (direction == ScrollDirection.reverse) {
          mainStream.add(false);
          searchBarStream.add(false);
        }
      },
    );
  }

  @override
  void dispose() {
    _liveController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(
          left: StyleString.cardSpace, right: StyleString.cardSpace),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(StyleString.imgRadius),
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          return await _liveController.onRefresh();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _liveController.scrollController,
          slivers: [
            SliverPadding(
              // 单列布局 EdgeInsets.zero
              padding:
                  const EdgeInsets.fromLTRB(0, StyleString.cardSpace, 0, 0),
              sliver: Obx(
                () => _liveController.loadingState.value is Loading ||
                        _liveController.loadingState.value is Success
                    ? contentGrid(_liveController.loadingState.value)
                    : HttpError(
                        errMsg: _liveController.loadingState.value is Error
                            ? (_liveController.loadingState.value as Error)
                                .errMsg
                            : '没有相关数据',
                        fn: () {
                          _liveController.loadingState.value =
                              LoadingState.loading();
                          _liveController.onRefresh();
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _removePopupDialog() {
    _liveController.popupDialog.last?.remove();
    _liveController.popupDialog.removeLast();
  }

  OverlayEntry _createPopupDialog(liveItem) {
    return OverlayEntry(
      builder: (context) => AnimatedDialog(
        closeFn: _removePopupDialog,
        videoItem: liveItem,
      ),
    );
  }

  Widget contentGrid(LoadingState loadingState) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        mainAxisSpacing: StyleString.cardSpace,
        crossAxisSpacing: StyleString.cardSpace,
        maxCrossAxisExtent: Grid.maxRowWidth,
        childAspectRatio: StyleString.aspectRatio,
        mainAxisExtent: MediaQuery.textScalerOf(context).scale(80),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return loadingState is Success
              ? LiveCardV(
                  liveItem: loadingState.response[index],
                  longPress: () {
                    _liveController.popupDialog
                        .add(_createPopupDialog(loadingState.response[index]));
                    Overlay.of(context)
                        .insert(_liveController.popupDialog.last!);
                  },
                  longPressEnd: _removePopupDialog,
                )
              : const VideoCardVSkeleton();
        },
        childCount: loadingState is Success ? loadingState.response.length : 10,
      ),
    );
  }
}
