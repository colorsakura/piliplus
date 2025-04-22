import 'package:PiliPlus/common/skeleton/msg_feed_top.dart';
import 'package:PiliPlus/common/widgets/dialog.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/fans/result.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';

import '../../utils/grid.dart';
import 'controller.dart';

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
          _fansController.isOwner ? '我的粉丝' : '${_fansController.name}的粉丝',
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: refreshIndicator(
          onRefresh: () async => await _fansController.onRefresh(),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _fansController.scrollController,
            slivers: [
              Obx(() => _buildBody(_fansController.loadingState.value)),
            ],
          ),
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
                    final item = loadingState.response![index];
                    String heroTag = Utils.makeHeroTag(item.mid);
                    return ListTile(
                      onTap: () {
                        Get.toNamed(
                          '/member?mid=${item.mid}',
                          arguments: {'face': item.face, 'heroTag': heroTag},
                        );
                      },
                      onLongPress: _fansController.isOwner
                          ? () {
                              showConfirmDialog(
                                context: context,
                                title: '确定移除 ${item.uname} ？',
                                onConfirm: () {
                                  _fansController.onRemoveFan(index, item.mid!);
                                },
                              );
                            }
                          : null,
                      leading: Hero(
                        tag: heroTag,
                        child: NetworkImgLayer(
                          width: 45,
                          height: 45,
                          type: 'avatar',
                          src: item.face,
                        ),
                      ),
                      title: Text(
                        item.uname!,
                        style: const TextStyle(fontSize: 14),
                      ),
                      subtitle: Text(
                        item.sign ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      dense: true,
                      trailing: const SizedBox(width: 6),
                    );
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
