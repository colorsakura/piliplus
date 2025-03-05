import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';

import '../../../utils/app_scheme.dart';
import 'controller.dart';

class ReplyMePage extends StatefulWidget {
  const ReplyMePage({super.key});

  @override
  State<ReplyMePage> createState() => _ReplyMePageState();
}

class _ReplyMePageState extends State<ReplyMePage> {
  late final _replyMeController = Get.put(ReplyMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('回复我的')),
      body: refreshIndicator(
        onRefresh: () async {
          await _replyMeController.onRefresh();
        },
        child: Obx(() => _buildBody(_replyMeController.loadingState.value)),
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? ListView.separated(
              itemCount: loadingState.response.length,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.paddingOf(context).bottom + 80),
              itemBuilder: (context, int index) {
                if (index == loadingState.response.length - 1) {
                  _replyMeController.onLoadMore();
                }

                return ListTile(
                  onTap: () {
                    String? nativeUri =
                        loadingState.response[index].item?.nativeUri;
                    if (nativeUri != null) {
                      PiliScheme.routePushFromUrl(nativeUri);
                    }
                  },
                  leading: GestureDetector(
                    onTap: () {
                      Get.toNamed(
                          '/member?mid=${loadingState.response[index].user?.mid}');
                    },
                    child: NetworkImgLayer(
                      width: 45,
                      height: 45,
                      type: 'avatar',
                      src: loadingState.response[index].user?.avatar,
                    ),
                  ),
                  title: Text(
                    "${loadingState.response[index].user?.nickname}  "
                    "回复了我的${loadingState.response[index].item?.business}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(
                            loadingState.response[index].item?.sourceContent ??
                                "",
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: 4),
                        if (loadingState
                                    .response[index].item?.targetReplyContent !=
                                null &&
                            loadingState
                                    .response[index].item?.targetReplyContent !=
                                "")
                          Text(
                              "| ${loadingState.response[index].item?.targetReplyContent}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      height: 1.5)),
                        if (loadingState
                                    .response[index].item?.rootReplyContent !=
                                null &&
                            loadingState
                                    .response[index].item?.rootReplyContent !=
                                "")
                          Text(
                              " | ${loadingState.response[index].item?.rootReplyContent}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline,
                                          height: 1.5)),
                      ]),
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
          : scrollErrorWidget(callback: _replyMeController.onReload),
      Error() => scrollErrorWidget(
          errMsg: loadingState.errMsg,
          callback: _replyMeController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
