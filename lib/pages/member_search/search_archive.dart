import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/video_card_h.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/member_search/controller.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:easy_debounce/easy_throttle.dart';
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
                      top: StyleString.safeSpace - 5,
                      bottom: MediaQuery.paddingOf(context).bottom + 80,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: 2,
                        maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                        childAspectRatio: StyleString.aspectRatio * 2.2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == loadingState.response.length - 1) {
                            EasyThrottle.throttle('searchArchives',
                                const Duration(milliseconds: 500), () {
                              ctr.searchArchives(false);
                            });
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
              callback: () {
                ctr.archiveState.value = LoadingState.loading();
                ctr.refreshArchive();
              },
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: () {
            ctr.archiveState.value = LoadingState.loading();
            ctr.refreshArchive();
          },
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
