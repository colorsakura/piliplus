import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/member_dynamics/index.dart';
import 'package:PiliPlus/utils/utils.dart';

import '../../common/constants.dart';
import '../../common/widgets/http_error.dart';
import '../../utils/grid.dart';
import '../../utils/storage.dart';
import '../dynamics/widgets/dynamic_panel.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class MemberDynamicsPage extends StatefulWidget {
  const MemberDynamicsPage({super.key, this.mid});

  final int? mid;

  @override
  State<MemberDynamicsPage> createState() => _MemberDynamicsPageState();
}

class _MemberDynamicsPageState extends State<MemberDynamicsPage>
    with AutomaticKeepAliveClientMixin {
  late MemberDynamicsController _memberDynamicController;
  late int mid;
  late bool dynamicsWaterfallFlow;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    mid = widget.mid ?? int.parse(Get.parameters['mid']!);
    final String heroTag = Utils.makeHeroTag(mid);
    _memberDynamicController =
        Get.put(MemberDynamicsController(mid), tag: heroTag);
    dynamicsWaterfallFlow = GStorage.setting
        .get(SettingBoxKey.dynamicsWaterfallFlow, defaultValue: true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.mid == null
        ? Scaffold(
            appBar: AppBar(title: Text('Ta的动态')),
            body: _buildBody,
          )
        : _buildBody;
  }

  Widget get _buildBody => refreshIndicator(
        onRefresh: () async {
          await _memberDynamicController.onRefresh();
        },
        child: Obx(
          () => _memberDynamicController.loadingState.value is Loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    _buildContent(_memberDynamicController.loadingState.value),
                  ],
                ),
        ),
      );

  _buildContent(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => HttpError(
          callback: _memberDynamicController.onReload,
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom,
              ),
              sliver: dynamicsWaterfallFlow
                  ? SliverWaterfallFlow.extent(
                      maxCrossAxisExtent: Grid.maxRowWidth * 2,
                      //cacheExtent: 0.0,
                      crossAxisSpacing: StyleString.safeSpace,
                      mainAxisSpacing: StyleString.safeSpace,

                      /// follow max child trailing layout offset and layout with full cross axis extend
                      /// last child as loadmore item/no more item in [GridView] and [WaterfallFlow]
                      /// with full cross axis extend
                      //  LastChildLayoutType.fullCrossAxisExtend,

                      /// as foot at trailing and layout with full cross axis extend
                      /// show no more item at trailing when children are not full of viewport
                      /// if children is full of viewport, it's the same as fullCrossAxisExtend
                      //  LastChildLayoutType.foot,
                      lastChildLayoutTypeBuilder: (index) {
                        if (index == loadingState.response.length - 1) {
                          _memberDynamicController.onLoadMore();
                        }
                        return index == loadingState.response.length
                            ? LastChildLayoutType.foot
                            : LastChildLayoutType.none;
                      },
                      children: (loadingState.response as List)
                          .map(
                            (item) => DynamicPanel(
                              item: item,
                              onRemove: _memberDynamicController.onRemove,
                            ),
                          )
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
                                if (index == loadingState.response.length - 1) {
                                  _memberDynamicController.onLoadMore();
                                }
                                return DynamicPanel(
                                  item: loadingState.response[index],
                                  onRemove: _memberDynamicController.onRemove,
                                );
                              },
                              childCount: loadingState.response.length,
                            ),
                          ),
                        ),
                        const SliverFillRemaining(),
                      ],
                    ),
            )
          : HttpError(
              callback: _memberDynamicController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _memberDynamicController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
