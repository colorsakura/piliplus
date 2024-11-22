import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/member_search/controller.dart';
import 'package:PiliPalaX/utils/grid.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class SearchDynamic extends StatelessWidget {
  const SearchDynamic({
    super.key,
    required this.ctr,
  });

  final MemberSearchController ctr;

  @override
  Widget build(BuildContext context) {
    return Obx(() => _buildBody(context, ctr.dynamicState.value));
  }

  Widget _buildBody(BuildContext context, LoadingState loadingState) {
    bool dynamicsWaterfallFlow = GStorage.setting
        .get(SettingBoxKey.dynamicsWaterfallFlow, defaultValue: true);
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? refreshIndicator(
              onRefresh: () async {
                await ctr.refreshDynamic();
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.paddingOf(context).bottom,
                    ),
                    sliver: dynamicsWaterfallFlow
                        ? SliverWaterfallFlow.extent(
                            maxCrossAxisExtent: Grid.maxRowWidth * 2,
                            crossAxisSpacing: StyleString.safeSpace,
                            mainAxisSpacing: StyleString.safeSpace,
                            lastChildLayoutTypeBuilder: (index) {
                              if (index == loadingState.response.length - 1) {
                                EasyThrottle.throttle('member_dynamics',
                                    const Duration(milliseconds: 1000), () {
                                  ctr.searchDynamic(false);
                                });
                              }
                              return index == loadingState.response.length
                                  ? LastChildLayoutType.foot
                                  : LastChildLayoutType.none;
                            },
                            children: (loadingState.response as List)
                                .map((item) => _buildItem(item))
                                .toList(),
                          )
                        : SliverCrossAxisGroup(
                            slivers: [
                              const SliverFillRemaining(),
                              SliverConstrainedCrossAxis(
                                maxExtent: Grid.maxRowWidth * 2,
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) {
                                      if (index ==
                                          loadingState.response.length - 1) {
                                        EasyThrottle.throttle('member_dynamics',
                                            const Duration(milliseconds: 1000),
                                            () {
                                          ctr.searchDynamic(false);
                                        });
                                      }
                                      return _buildItem(
                                        loadingState.response[index],
                                      );
                                    },
                                    childCount: loadingState.response.length,
                                  ),
                                ),
                              ),
                              const SliverFillRemaining(),
                            ],
                          ),
                  ),
                ],
              ),
            )
          : errorWidget(
              callback: ctr.refreshDynamic,
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: ctr.refreshDynamic,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  Widget _buildItem(item) {
    return switch (item['desc']['type']) {
      2 => ListTile(
          dense: true,
          onTap: () {},
          title: const Text('动态'),
        ),
      4 => ListTile(
          dense: true,
          onTap: () {},
          title: const Text('动态'),
        ),
      8 => ListTile(
          dense: true,
          onTap: () {},
          title: const Text('视频'),
        ),
      _ => ListTile(
          dense: true,
          onTap: () {},
          title: Text('TODO: type: ${item['desc']['type']}'),
        ),
    };
  }
}
