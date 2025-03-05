import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class AtMePage extends StatefulWidget {
  const AtMePage({super.key});

  @override
  State<AtMePage> createState() => _AtMePageState();
}

class _AtMePageState extends State<AtMePage> {
  late final AtMeController _atMeController = Get.put(AtMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@我的'),
      ),
      body: refreshIndicator(
        onRefresh: () async {
          await _atMeController.onRefresh();
        },
        child: Obx(() => _buildBody(_atMeController.loadingState.value)),
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
                  _atMeController.onLoadMore();
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
                    "在${loadingState.response[index].item?.business}中@了我",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                          loadingState.response[index].item?.sourceContent ??
                              "",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.outline))
                    ],
                  ),
                  trailing: loadingState.response[index].item?.image != null &&
                          loadingState.response[index].item?.image != ""
                      ? NetworkImgLayer(
                          width: 45,
                          height: 45,
                          type: 'cover',
                          src: loadingState.response[index].item?.image,
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
          : scrollErrorWidget(callback: _atMeController.onReload),
      Error() => scrollErrorWidget(
          errMsg: loadingState.errMsg,
          callback: _atMeController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
