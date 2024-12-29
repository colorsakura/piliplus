import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/common/widgets/animated_dialog.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import '../../../../common/constants.dart';
import '../../../../utils/grid.dart';
import './controller.dart';

class RelatedVideoPanel extends StatefulWidget {
  const RelatedVideoPanel({super.key, required this.heroTag});
  final String heroTag;
  @override
  State<RelatedVideoPanel> createState() => _RelatedVideoPanelState();
}

class _RelatedVideoPanelState extends State<RelatedVideoPanel>
    with AutomaticKeepAliveClientMixin {
  late final RelatedController _relatedController =
      Get.put(RelatedController(), tag: widget.heroTag);

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SliverPadding(
      padding: const EdgeInsets.only(top: StyleString.safeSpace - 5),
      sliver: Obx(() => _buildBody(_relatedController.loadingState.value)),
    );
  }

  OverlayEntry _createPopupDialog(videoItem) {
    return OverlayEntry(
      builder: (BuildContext context) => AnimatedDialog(
        closeFn: _relatedController.removePopupDialog,
        videoItem: videoItem,
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithExtentAndRatio(
            mainAxisSpacing: 2,
            maxCrossAxisExtent: Grid.maxRowWidth * 2,
            childAspectRatio: StyleString.aspectRatio * 2.2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoCardHSkeleton();
            },
            childCount: 5,
          ),
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                mainAxisSpacing: 2,
                maxCrossAxisExtent: Grid.maxRowWidth * 2,
                childAspectRatio: StyleString.aspectRatio * 2.2,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                if (index == loadingState.response.length) {
                  return SizedBox(
                    height: MediaQuery.of(context).padding.bottom,
                  );
                } else {
                  return Material(
                    child: VideoCardH(
                      videoItem: loadingState.response[index],
                      showPubdate: true,
                      longPress: () {
                        _relatedController.popupDialog.add(
                            _createPopupDialog(loadingState.response[index]));
                        Overlay.of(context)
                            .insert(_relatedController.popupDialog.last!);
                      },
                      longPressEnd: _relatedController.removePopupDialog,
                    ),
                  );
                }
              }, childCount: loadingState.response.length + 1),
            )
          : SliverToBoxAdapter(),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _relatedController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
