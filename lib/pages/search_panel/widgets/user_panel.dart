import 'package:PiliPalaX/pages/search/widgets/search_text.dart';
import 'package:PiliPalaX/pages/search_panel/controller.dart';
import 'package:PiliPalaX/pages/video/detail/reply/view.dart'
    show MySliverPersistentHeaderDelegate;
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/utils/utils.dart';

import '../../../common/constants.dart';
import '../../../utils/grid.dart';

Widget searchUserPanel(BuildContext context, searchPanelCtr, list) {
  TextStyle style = TextStyle(
      fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
      color: Theme.of(context).colorScheme.outline);
  final ctr = Get.put(UserPanelController());

  return CustomScrollView(
    controller: searchPanelCtr.scrollController,
    slivers: [
      SliverPersistentHeader(
        pinned: false,
        floating: true,
        delegate: MySliverPersistentHeaderDelegate(
          child: Container(
            height: 40,
            color: Theme.of(context).colorScheme.surface,
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
      SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: StyleString.cardSpace,
            crossAxisSpacing: StyleString.safeSpace,
            maxCrossAxisExtent: Grid.maxRowWidth * 2,
            mainAxisExtent: 56),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            var i = list![index];
            String heroTag = Utils.makeHeroTag(i!.mid);
            return InkWell(
              onTap: () => Get.toNamed('/member?mid=${i.mid}',
                  arguments: {'heroTag': heroTag, 'face': i.upic}),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Hero(
                    tag: heroTag,
                    child: NetworkImgLayer(
                      width: 42,
                      height: 42,
                      src: i.upic,
                      type: 'avatar',
                    ),
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
                            'assets/images/lv/lv${i!.level}.png',
                            height: 11,
                            semanticLabel: '等级${i.level}',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('粉丝：${i.fans} ', style: style),
                          Text(' 视频：${i.videos}', style: style)
                        ],
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
          childCount: list!.length,
        ),
      )
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
      isScrollControlled: true,
      builder: (_) => SingleChildScrollView(
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
                        searchText: item['label'],
                        onSelect: (_) async {
                          Get.back();
                          currentOrderFilterval.value = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                                  tag: 'bili_user${searchPanelCtr.keyword!}');
                          ctr.orderSort = item['orderSort'];
                          ctr.order.value = item['order'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongSelect: (_) {},
                        bgColor: item['value'] == currentOrderFilterval.value
                            ? Theme.of(context).colorScheme.primaryContainer
                            : null,
                        textColor: item['value'] == currentOrderFilterval.value
                            ? Theme.of(context).colorScheme.onPrimaryContainer
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
                        searchText: item['label'],
                        onSelect: (_) async {
                          Get.back();
                          currentUserTypeFilterval.value = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                                  tag: 'bili_user${searchPanelCtr.keyword!}');
                          ctr.userType = item['userType'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongSelect: (_) {},
                        bgColor: item['value'] == currentUserTypeFilterval.value
                            ? Theme.of(context).colorScheme.primaryContainer
                            : null,
                        textColor: item['value'] ==
                                currentUserTypeFilterval.value
                            ? Theme.of(context).colorScheme.onPrimaryContainer
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
