import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/member_search/controller.dart';
import 'package:PiliPalaX/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SearchArchive extends StatelessWidget {
  const SearchArchive({
    super.key,
    required this.ctr,
  });

  final MemberSearchController ctr;

  @override
  Widget build(BuildContext context) {
    return Obx(() => _buildBody(context, ctr.archiveState.value));
  }

  Widget _buildBody(BuildContext context, LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? refreshIndicator(
              onRefresh: () async {
                await ctr.refreshArchive();
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(
                      left: StyleString.safeSpace,
                      top: StyleString.safeSpace,
                      right: StyleString.safeSpace,
                      bottom: 92 + MediaQuery.paddingOf(context).bottom,
                    ),
                    sliver: SliverGrid(
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
                            ctr.searchArchives(false);
                          }
                          return VideoCardH(
                            videoItem: loadingState.response[index],
                          );
                        },
                        childCount: loadingState.response.length,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : errorWidget(
              callback: ctr.refreshArchive,
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: ctr.refreshArchive,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
