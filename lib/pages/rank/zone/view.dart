import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/video_card_h.dart';
import 'package:PiliPlus/pages/rank/zone/index.dart';

import '../../../utils/grid.dart';

class ZonePage extends CommonPage {
  const ZonePage({super.key, required this.rid});

  final int rid;

  @override
  State<ZonePage> createState() => _ZonePageState();
}

class _ZonePageState extends CommonPageState<ZonePage, ZoneController>
    with AutomaticKeepAliveClientMixin {
  @override
  late ZoneController controller = Get.put(
    ZoneController(zoneID: widget.rid),
    tag: widget.rid.toString(),
  );

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        await controller.onRefresh();
      },
      child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          SliverPadding(
            // 单列布局 EdgeInsets.zero
            padding: EdgeInsets.only(
              top: StyleString.safeSpace - 5,
              bottom: MediaQuery.of(context).padding.bottom + 80,
            ),
            sliver: Obx(
              () => controller.loadingState.value is Loading
                  ? _buildSkeleton()
                  : controller.loadingState.value is Success
                      ? _buildBody(controller.loadingState.value as Success)
                      : HttpError(
                          errMsg: controller.loadingState.value is Error
                              ? (controller.loadingState.value as Error).errMsg
                              : '没有相关数据',
                          callback: controller.onReload,
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
        maxCrossAxisExtent: Grid.mediumCardWidth * 2,
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
        maxCrossAxisExtent: Grid.mediumCardWidth * 2,
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
