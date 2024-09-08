import 'dart:async';

import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/common/tab_type.dart';
import 'package:PiliPalaX/pages/common/popup_controller.dart';
import 'package:PiliPalaX/pages/live/controller.dart';
import 'package:PiliPalaX/pages/live/widgets/live_item.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/skeleton/video_card_v.dart';
import 'package:PiliPalaX/common/widgets/animated_dialog.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/video_card_v.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/main/index.dart';

import '../../utils/grid.dart';
import 'controller.dart';

class RcmdPage extends StatefulWidget {
  const RcmdPage({super.key, required this.tabType});

  final TabType tabType;

  @override
  State<RcmdPage> createState() => _RcmdPageState();
}

class _RcmdPageState extends State<RcmdPage>
    with AutomaticKeepAliveClientMixin {
  late final PopupController _controller = widget.tabType == TabType.rcmd
      ? Get.put<RcmdController>(RcmdController())
      : Get.put<LiveController>(LiveController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _controller.scrollController.addListener(
      () {
        if (_controller.scrollController.position.pixels >=
            _controller.scrollController.position.maxScrollExtent - 200) {
          EasyThrottle.throttle(
              'my-throttler', const Duration(milliseconds: 200), () {
            _controller.onLoadMore();
          });
        }
        final ScrollDirection direction =
            _controller.scrollController.position.userScrollDirection;
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
    _controller.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(
          left: StyleString.safeSpace, right: StyleString.safeSpace),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(StyleString.imgRadius),
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          await _controller.onRefresh();
        },
        child: CustomScrollView(
          controller: _controller.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: StyleString.cardSpace),
              sliver: Obx(
                () => _controller.loadingState.value is Loading ||
                        _controller.loadingState.value is Success
                    ? contentGrid(_controller.loadingState.value)
                    : HttpError(
                        errMsg: _controller.loadingState.value is Error
                            ? (_controller.loadingState.value as Error).errMsg
                            : '没有相关数据',
                        fn: _controller.onReload,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  OverlayEntry _createPopupDialog(videoItem) {
    return OverlayEntry(
      builder: (context) => AnimatedDialog(
        closeFn: _controller.removePopupDialog,
        videoItem: videoItem,
      ),
    );
  }

  Widget contentGrid(LoadingState loadingState) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        // 行间距
        mainAxisSpacing: StyleString.cardSpace,
        // 列间距
        crossAxisSpacing: StyleString.cardSpace,
        // 最大宽度
        maxCrossAxisExtent: Grid.maxRowWidth,
        childAspectRatio: StyleString.aspectRatio,
        mainAxisExtent: MediaQuery.textScalerOf(context).scale(90),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return loadingState is Success
              ? widget.tabType == TabType.rcmd
                  ? VideoCardV(
                      videoItem: loadingState.response[index],
                      longPress: () {
                        _controller.popupDialog.add(
                            _createPopupDialog(loadingState.response[index]));
                        Overlay.of(context)
                            .insert(_controller.popupDialog.last!);
                      },
                      longPressEnd: _controller.removePopupDialog,
                    )
                  : LiveCardV(
                      liveItem: loadingState.response[index],
                      longPress: () {
                        _controller.popupDialog.add(
                            _createPopupDialog(loadingState.response[index]));
                        Overlay.of(context)
                            .insert(_controller.popupDialog.last!);
                      },
                      longPressEnd: _controller.removePopupDialog,
                    )
              : const VideoCardVSkeleton();
        },
        childCount: loadingState is Success ? loadingState.response.length : 10,
      ),
    );
  }
}
