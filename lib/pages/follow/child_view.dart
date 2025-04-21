import 'package:PiliPlus/common/skeleton/msg_feed_top.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/follow/result.dart';
import 'package:PiliPlus/pages/follow/child_controller.dart';
import 'package:PiliPlus/pages/follow/widgets/follow_item.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowChildPage extends StatefulWidget {
  const FollowChildPage({super.key, required this.mid, this.tagid});

  final int mid;
  final int? tagid;

  @override
  State<FollowChildPage> createState() => _FollowChildPageState();
}

class _FollowChildPageState extends State<FollowChildPage>
    with AutomaticKeepAliveClientMixin {
  late final _followController = Get.put(
      FollowChildController(widget.mid, widget.tagid),
      tag: Utils.generateRandomString(8));
  late final _isOwner = widget.tagid != null;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        await _followController.onRefresh();
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom + 80),
            sliver: Obx(() => _buildBody(_followController.loadingState.value)),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState<List<FollowItemModel>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverList.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return MsgFeedTopSkeleton();
          },
        ),
      Success() => loadingState.response?.isNotEmpty == true
          ? SliverList.builder(
              itemCount: loadingState.response!.length,
              itemBuilder: (context, index) {
                if (index == loadingState.response!.length - 1) {
                  _followController.onLoadMore();
                }
                return FollowItem(
                  item: loadingState.response![index],
                  isOwner: _isOwner,
                  callback: (attr) {
                    List<FollowItemModel> list =
                        (_followController.loadingState.value as Success)
                            .response;
                    list[index].attribute = attr == 0 ? -1 : 0;
                    _followController.loadingState.refresh();
                  },
                );
              },
            )
          : HttpError(
              callback: _followController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _followController.onReload,
        ),
      _ => throw UnimplementedError(),
    };
  }

  @override
  bool get wantKeepAlive => widget.tagid != null;
}
