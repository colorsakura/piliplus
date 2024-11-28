import 'dart:async';

import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/animated_dialog.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/hot/controller.dart';
import 'package:PiliPalaX/pages/main/index.dart';

import '../../utils/grid.dart';

class HotPage extends StatefulWidget {
  const HotPage({super.key});

  @override
  State<HotPage> createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> with AutomaticKeepAliveClientMixin {
  final HotController _hotController = Get.put(HotController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _hotController.scrollController.addListener(
      () {
        final ScrollDirection direction =
            _hotController.scrollController.position.userScrollDirection;
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
    _hotController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        return await _hotController.onRefresh();
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _hotController.scrollController,
        slivers: [
          SliverPadding(
            // 单列布局 EdgeInsets.zero
            padding: EdgeInsets.fromLTRB(
              StyleString.safeSpace,
              StyleString.safeSpace - 5,
              StyleString.safeSpace,
              MediaQuery.of(context).padding.bottom + 10,
            ),
            sliver: Obx(
              () => _buildBody(_hotController.loadingState.value),
            ),
          ),
        ],
      ),
    );
  }

  OverlayEntry _createPopupDialog(videoItem) {
    return OverlayEntry(
      builder: (context) => AnimatedDialog(
        closeFn: _hotController.removePopupDialog,
        videoItem: videoItem,
      ),
    );
  }

  Widget _buildSkeleton() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: StyleString.cardSpace,
        crossAxisSpacing: StyleString.cardSpace,
        maxCrossAxisExtent: Grid.maxRowWidth * 2,
        childAspectRatio: StyleString.aspectRatio * 2.4,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const VideoCardHSkeleton();
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => _buildSkeleton(),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                mainAxisSpacing: StyleString.safeSpace,
                crossAxisSpacing: StyleString.safeSpace,
                maxCrossAxisExtent: Grid.maxRowWidth * 2,
                childAspectRatio: StyleString.aspectRatio * 2.4,
                mainAxisExtent: 0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == loadingState.response.length - 1) {
                    _hotController.onLoadMore();
                  }
                  return VideoCardH(
                    videoItem: loadingState.response[index],
                    showPubdate: true,
                    longPress: () {
                      _hotController.popupDialog.add(
                          _createPopupDialog(loadingState.response[index]));
                      Overlay.of(context)
                          .insert(_hotController.popupDialog.last!);
                    },
                    longPressEnd: _hotController.removePopupDialog,
                  );
                },
                childCount: loadingState.response.length,
              ),
            )
          : HttpError(
              callback: _hotController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _hotController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
