import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/dynamics/widgets/dynamic_panel.dart';
import 'package:PiliPlus/pages/member_search/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                            maxCrossAxisExtent: Grid.smallCardWidth * 2,
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
                                .map((item) => DynamicPanel(item: item))
                                .toList(),
                          )
                        : SliverCrossAxisGroup(
                            slivers: [
                              const SliverFillRemaining(),
                              SliverConstrainedCrossAxis(
                                maxExtent: Grid.smallCardWidth * 2,
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
                                      return DynamicPanel(
                                        item: loadingState.response[index],
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
              callback: () {
                ctr.dynamicState.value = LoadingState.loading();
                ctr.refreshDynamic();
              },
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: () {
            ctr.dynamicState.value = LoadingState.loading();
            ctr.refreshDynamic();
          },
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  _buildHeader({
    required BuildContext context,
    required String face,
    required String name,
    required dynamic vip,
    required dynamic pubTime,
  }) {
    return Row(
      children: [
        NetworkImgLayer(
          width: 40,
          height: 40,
          type: 'avatar',
          src: face,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: vip != null
                        ? (vip?['status'] ?? vip?['vipStatus'] ?? 0) > 0 &&
                                (vip?['type'] ?? vip?['vipType']) == 2
                            ? context.vipColor
                            : null
                        : null,
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                  ),
                ),
              ],
            ),
            if (pubTime != null)
              Text(
                Utils.dateFormat(pubTime),
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
