import 'package:PiliPlus/common/skeleton/msg_feed_top.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/fans/result.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';

import '../../utils/grid.dart';
import 'controller.dart';
import 'widgets/fan_item.dart';

class FansPage extends StatefulWidget {
  const FansPage({super.key});

  @override
  State<FansPage> createState() => _FansPageState();
}

class _FansPageState extends State<FansPage> {
  late String mid;
  late FansController _fansController;

  @override
  void initState() {
    super.initState();
    mid = Get.parameters['mid']!;
    _fansController = Get.put(FansController(), tag: Utils.makeHeroTag(mid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _fansController.isOwner.value ? '我的粉丝' : '${_fansController.name}的粉丝',
        ),
      ),
      body: refreshIndicator(
        onRefresh: () async => await _fansController.onRefresh(),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _fansController.scrollController,
          slivers: [
            Obx(() => _buildBody(_fansController.loadingState.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState<List<FansItemModel>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: Grid.smallCardWidth * 2,
            mainAxisExtent: 66,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const MsgFeedTopSkeleton();
            },
            childCount: 16,
          ),
        ),
      Success() => loadingState.response?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.paddingOf(context).bottom + 80),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: Grid.smallCardWidth * 2,
                  mainAxisExtent: 66,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (index == loadingState.response!.length - 1) {
                      _fansController.onLoadMore();
                    }
                    return fanItem(item: loadingState.response![index]);
                  },
                  childCount: loadingState.response!.length,
                ),
              ),
            )
          : HttpError(
              callback: _fansController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _fansController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
