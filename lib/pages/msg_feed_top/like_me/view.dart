import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/msg/msgfeed_like_me.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';

import '../../../utils/app_scheme.dart';
import 'controller.dart';

class LikeMePage extends StatefulWidget {
  const LikeMePage({super.key});

  @override
  State<LikeMePage> createState() => _LikeMePageState();
}

class _LikeMePageState extends State<LikeMePage> {
  late final LikeMeController _likeMeController = Get.put(LikeMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('收到的赞'),
      ),
      body: refreshIndicator(
        onRefresh: () async {
          await _likeMeController.onRefresh();
        },
        child: Obx(() => _buildBody(_likeMeController.loadingState.value)),
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => () {
          Pair<List<LikeMeItems>, List<LikeMeItems>> pair =
              loadingState.response;

          int length = pair.first.length + pair.second.length;
          if (pair.first.isNotEmpty) {
            length++;
          }
          if (pair.second.isNotEmpty) {
            length++;
          }

          LikeMeItems getCurrentItem(int index) {
            if (pair.first.isEmpty) {
              return pair.second[index - 1];
            } else {
              return index <= pair.first.length
                  ? pair.first[index - 1]
                  : pair.second[index - pair.first.length - 2];
            }
          }

          return length > 0
              ? ListView.separated(
                  itemCount: length,
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.paddingOf(context).bottom + 80),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, int index) {
                    if (index == length - 1) {
                      _likeMeController.onLoadMore();
                    }

                    // title
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          pair.first.isNotEmpty ? '最新' : '累计',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      );
                    } else if (pair.first.isNotEmpty &&
                        index == pair.first.length + 1) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "累计",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      );
                    }

                    // item
                    final item = getCurrentItem(index);
                    return ListTile(
                      onTap: () {
                        String? nativeUri = item.item?.nativeUri;
                        if (nativeUri != null) {
                          PiliScheme.routePushFromUrl(nativeUri);
                        }
                      },
                      leading: Column(
                        children: [
                          const Spacer(),
                          SizedBox(
                              width: 50,
                              height: 50,
                              child: Stack(
                                children: [
                                  for (var j = 0;
                                      j < item.users!.length && j < 4;
                                      j++) ...<Widget>[
                                    Positioned(
                                        left: 15 * (j % 2).toDouble(),
                                        top: 15 * (j ~/ 2).toDouble(),
                                        child: NetworkImgLayer(
                                          width:
                                              item.users!.length > 1 ? 30 : 45,
                                          height:
                                              item.users!.length > 1 ? 30 : 45,
                                          type: 'avatar',
                                          src: item.users![j].avatar,
                                        )),
                                  ]
                                ],
                              )),
                          const Spacer(),
                        ],
                      ),
                      title: Text(
                        // "${msgFeedLikeMeList[i].users!.map((e) => e.nickname).join("/")}"
                        "${item.users?[0].nickname}"
                        "${item.users!.length > 1 ? '、${item.users![1].nickname} 等' : ''} "
                        "${item.counts! > 1 ? '共 ${item.counts} 人' : ''}"
                        "赞了我的${item.item?.business}",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            height: 1.5,
                            color: Theme.of(context).colorScheme.primary),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle:
                          item.item?.title != null && item.item?.title != ""
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 4),
                                    Text(item.item?.title ?? "",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .outline,
                                                height: 1.5))
                                  ],
                                )
                              : null,
                      trailing:
                          item.item?.image != null && item.item?.image != ""
                              ? NetworkImgLayer(
                                  width: 45,
                                  height: 45,
                                  type: 'cover',
                                  src: item.item?.image,
                                )
                              : null,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      indent: 72,
                      endIndent: 20,
                      height: 6,
                      color: Colors.grey.withOpacity(0.1),
                    );
                  },
                )
              : scrollErrorWidget(callback: _likeMeController.onReload);
        }(),
      Error() => scrollErrorWidget(
          errMsg: loadingState.errMsg,
          callback: _likeMeController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
