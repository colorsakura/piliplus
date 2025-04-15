import 'dart:math';

import 'package:PiliPlus/common/widgets/custom_sliver_persistent_header_delegate.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/search/widgets/search_text.dart';
import 'package:PiliPlus/pages/search_panel/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/utils/utils.dart';

import '../../../utils/grid.dart';

Widget searchUserPanel(
    BuildContext context,
    SearchPanelController searchPanelCtr,
    LoadingState<List<dynamic>?> loadingState) {
  TextStyle style = TextStyle(
      fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
      color: Theme.of(context).colorScheme.outline);
  final ctr = Get.put(UserPanelController(), tag: searchPanelCtr.tag);

  return CustomScrollView(
    controller: searchPanelCtr.scrollController,
    physics: const AlwaysScrollableScrollPhysics(),
    slivers: [
      SliverPersistentHeader(
        pinned: false,
        floating: true,
        delegate: CustomSliverPersistentHeaderDelegate(
          extent: 40,
          bgColor: Theme.of(context).colorScheme.surface,
          child: Container(
            height: 40,
            padding: const EdgeInsets.only(left: 25, right: 12),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    '排序: ${ctr.orderFiltersList[ctr.currentOrderFilterval.value]['label']}',
                    maxLines: 1,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.outline),
                  ),
                ),
                const Spacer(),
                Obx(
                  () => Text(
                    '用户类型: ${ctr.userTypeFiltersList[ctr.currentUserTypeFilterval.value]['label']}',
                    maxLines: 1,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.outline),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconButton(
                    tooltip: '筛选',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      ctr.onShowFilterDialog(context, searchPanelCtr);
                    },
                    icon: Icon(
                      Icons.filter_list_outlined,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      switch (loadingState) {
        Loading() => errorWidget(),
        Success() => loadingState.response?.isNotEmpty == true
            ? SliverPadding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 80,
                ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: Grid.smallCardWidth * 2,
                    mainAxisExtent: 56,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      if (index == loadingState.response!.length - 1) {
                        searchPanelCtr.onLoadMore();
                      }
                      var i = loadingState.response![index];
                      String heroTag = Utils.makeHeroTag(i!.mid);
                      return InkWell(
                        onTap: () => Get.toNamed('/member?mid=${i.mid}',
                            arguments: {'heroTag': heroTag, 'face': i.upic}),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                NetworkImgLayer(
                                  width: 42,
                                  height: 42,
                                  src: i.upic,
                                  type: 'avatar',
                                ),
                                if (i.officialVerify?['type'] == 0 ||
                                    i.officialVerify?['type'] == 1)
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                      ),
                                      child: Icon(
                                        Icons.offline_bolt,
                                        color: i.officialVerify?['type'] == 0
                                            ? Colors.yellow
                                            : Colors.lightBlueAccent,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      i!.uname,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Image.asset(
                                      'assets/images/lv/lv${i.isSeniorMember == 1 ? '6_s' : i!.level}.png',
                                      height: 11,
                                      semanticLabel: '等级${i.level}',
                                    ),
                                  ],
                                ),
                                Text(
                                  '粉丝：${Utils.numFormat(i.fans)}  视频：${Utils.numFormat(i.videos)}',
                                  style: style,
                                ),
                                if (i.officialVerify['desc'] != '')
                                  Text(
                                    i.officialVerify['desc'],
                                    style: style,
                                  ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    childCount: loadingState.response!.length,
                  ),
                ),
              )
            : HttpError(
                callback: searchPanelCtr.onReload,
              ),
        Error() => HttpError(
            errMsg: loadingState.errMsg,
            callback: searchPanelCtr.onReload,
          ),
        LoadingState() => throw UnimplementedError(),
      },
    ],
  );
}

class UserPanelController extends GetxController {
  List orderFiltersList = [
    {'label': '默认排序', 'value': 0, 'orderSort': 0, 'order': ''},
    {'label': '粉丝数由高到低', 'value': 1, 'orderSort': 0, 'order': 'fans'},
    {'label': '粉丝数由低到高', 'value': 2, 'orderSort': 1, 'order': 'fans'},
    {'label': 'Lv等级由高到低', 'value': 3, 'orderSort': 0, 'order': 'level'},
    {'label': 'Lv等级由低到高', 'value': 4, 'orderSort': 1, 'order': 'level'},
  ];
  List userTypeFiltersList = [
    {'label': '全部用户', 'value': 0, 'userType': 0},
    {'label': 'UP主', 'value': 1, 'userType': 1},
    {'label': '普通用户', 'value': 2, 'userType': 2},
    {'label': '认证用户', 'value': 3, 'userType': 3},
  ];
  RxInt currentOrderFilterval = 0.obs;
  RxInt currentUserTypeFilterval = 0.obs;

  onShowFilterDialog(
    BuildContext context,
    SearchPanelController searchPanelCtr,
  ) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      backgroundColor: Theme.of(context).colorScheme.surface,
      constraints: BoxConstraints(
        maxWidth: min(640, min(Get.width, Get.height)),
      ),
      builder: (context) => SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 20,
            left: 16,
            right: 16,
            bottom: 80 + MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text('用户粉丝数及等级排序顺序', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: orderFiltersList
                    .map(
                      (item) => SearchText(
                        text: item['label'],
                        onTap: (_) async {
                          Get.back();
                          currentOrderFilterval.value = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                            tag: searchPanelCtr.searchType.name +
                                searchPanelCtr.tag,
                          );
                          ctr.orderSort = item['orderSort'];
                          ctr.order.value = item['order'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onReload();
                          SmartDialog.dismiss();
                        },
                        bgColor: item['value'] == currentOrderFilterval.value
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : null,
                        textColor: item['value'] == currentOrderFilterval.value
                            ? Theme.of(context).colorScheme.onSecondaryContainer
                            : null,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 20),
              const Text('用户分类', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: userTypeFiltersList
                    .map(
                      (item) => SearchText(
                        text: item['label'],
                        onTap: (_) async {
                          Get.back();
                          currentUserTypeFilterval.value = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                            tag: searchPanelCtr.searchType.name +
                                searchPanelCtr.tag,
                          );
                          ctr.userType = item['userType'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onReload();
                          SmartDialog.dismiss();
                        },
                        bgColor: item['value'] == currentUserTypeFilterval.value
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : null,
                        textColor: item['value'] ==
                                currentUserTypeFilterval.value
                            ? Theme.of(context).colorScheme.onSecondaryContainer
                            : null,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
