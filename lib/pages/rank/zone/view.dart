import 'dart:async';

import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/main/index.dart';
import 'package:PiliPalaX/pages/rank/zone/index.dart';

import '../../../utils/grid.dart';

class ZonePage extends StatefulWidget {
  const ZonePage({super.key, required this.rid});

  final int rid;

  @override
  State<ZonePage> createState() => _ZonePageState();
}

class _ZonePageState extends State<ZonePage>
    with AutomaticKeepAliveClientMixin {
  late ZoneController _zoneController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _zoneController =
        Get.put(ZoneController(zoneID: widget.rid), tag: widget.rid.toString());
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _zoneController.scrollController.addListener(
      () {
        final ScrollDirection direction =
            _zoneController.scrollController.position.userScrollDirection;
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
    _zoneController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        return await _zoneController.onRefresh();
      },
      child: CustomScrollView(
        controller: _zoneController.scrollController,
        slivers: [
          SliverPadding(
            // 单列布局 EdgeInsets.zero
            padding: EdgeInsets.only(
              top: StyleString.safeSpace - 5,
              bottom: MediaQuery.of(context).padding.bottom + 80,
            ),
            sliver: Obx(
              () => _zoneController.loadingState.value is Loading
                  ? _buildSkeleton()
                  : _zoneController.loadingState.value is Success
                      ? _buildBody(
                          _zoneController.loadingState.value as Success)
                      : HttpError(
                          errMsg: _zoneController.loadingState.value is Error
                              ? (_zoneController.loadingState.value as Error)
                                  .errMsg
                              : '没有相关数据',
                          callback: _zoneController.onReload,
                        ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        mainAxisSpacing: 2,
        maxCrossAxisExtent: Grid.maxRowWidth * 2,
        childAspectRatio: StyleString.aspectRatio * 2.2,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const VideoCardHSkeleton();
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildBody(Success loadingState) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        mainAxisSpacing: 2,
        maxCrossAxisExtent: Grid.maxRowWidth * 2,
        childAspectRatio: StyleString.aspectRatio * 2.2,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return VideoCardH(
            videoItem: loadingState.response[index],
            showPubdate: true,
          );
        },
        childCount: loadingState.response.length,
      ),
    );
  }
}
