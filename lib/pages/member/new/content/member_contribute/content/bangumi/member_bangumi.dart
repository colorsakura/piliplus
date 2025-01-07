import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/bangumi/widgets/bangumi_card_v_member_home.dart';
import 'package:PiliPlus/pages/member/new/content/member_contribute/content/bangumi/member_bangumi_ctr.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberBangumi extends StatefulWidget {
  const MemberBangumi({
    super.key,
    required this.heroTag,
    required this.mid,
  });

  final String? heroTag;
  final int mid;

  @override
  State<MemberBangumi> createState() => _MemberBangumiState();
}

class _MemberBangumiState extends State<MemberBangumi>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final _controller = Get.put(
    MemberBangumiCtr(
      heroTag: widget.heroTag,
      mid: widget.mid,
    ),
    tag: widget.heroTag,
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Obx(() => _buildBody(_controller.loadingState.value));
  }

  _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? refreshIndicator(
              onRefresh: () async {
                await _controller.onRefresh();
              },
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(
                      left: StyleString.safeSpace,
                      right: StyleString.safeSpace,
                      top: StyleString.safeSpace,
                      bottom: StyleString.safeSpace +
                          MediaQuery.of(context).padding.bottom,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: StyleString.cardSpace,
                        crossAxisSpacing: StyleString.cardSpace,
                        maxCrossAxisExtent: Grid.maxRowWidth / 3 * 2,
                        childAspectRatio: 0.75,
                        mainAxisExtent:
                            MediaQuery.textScalerOf(context).scale(30),
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == loadingState.response.length - 1) {
                            _controller.onLoadMore();
                          }
                          return BangumiCardVMemberHome(
                            bangumiItem: loadingState.response[index],
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
              callback: _controller.onReload,
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: _controller.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
