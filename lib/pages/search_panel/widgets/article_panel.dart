import 'package:PiliPalaX/common/widgets/custom_sliver_persistent_header_delegate.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/image_save.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/search/widgets/search_text.dart';
import 'package:PiliPalaX/pages/search_panel/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/utils/utils.dart';

import '../../../utils/grid.dart';

Widget searchArticlePanel(context, searchPanelCtr, LoadingState loadingState) {
  TextStyle textStyle = TextStyle(
      fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
      color: Theme.of(context).colorScheme.outline);
  final ctr = Get.put(ArticlePanelController());

  return CustomScrollView(
    controller: searchPanelCtr.scrollController,
    slivers: [
      SliverPersistentHeader(
        pinned: false,
        floating: true,
        delegate: CustomSliverPersistentHeaderDelegate(
          extent: 40,
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
                    '分区: ${ctr.zoneFiltersList[ctr.currentZoneFilterval.value]['label']}',
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
        Success() => (loadingState.response as List?)?.isNotEmpty == true
            ? SliverPadding(
                padding: EdgeInsets.only(
                  bottom: StyleString.safeSpace +
                      MediaQuery.of(context).padding.bottom,
                ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithExtentAndRatio(
                    mainAxisSpacing: 2,
                    maxCrossAxisExtent: Grid.maxRowWidth * 2,
                    childAspectRatio: StyleString.aspectRatio * 2.2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      if (index == loadingState.response.length - 1) {
                        searchPanelCtr.onLoadMore();
                      }
                      return InkWell(
                        onTap: () {
                          Get.toNamed('/htmlRender', parameters: {
                            'url':
                                'www.bilibili.com/read/cv${loadingState.response[index].id}',
                            'title': loadingState.response[index].subTitle,
                            'id': 'cv${loadingState.response[index].id}',
                            'dynamicType': 'read'
                          });
                        },
                        onLongPress: () => imageSaveDialog(
                          context: context,
                          title: (loadingState.response[index].title as List?)
                                  ?.map((item) => item['text'])
                                  .join() ??
                              '',
                          cover: loadingState.response[index].imageUrls.first,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: StyleString.safeSpace,
                            vertical: 5,
                          ),
                          child: LayoutBuilder(
                            builder: (context, boxConstraints) {
                              final double width = (boxConstraints.maxWidth -
                                      StyleString.cardSpace *
                                          6 /
                                          MediaQuery.textScalerOf(context)
                                              .scale(1.0)) /
                                  2;
                              return Container(
                                constraints:
                                    const BoxConstraints(minHeight: 88),
                                height: width / StyleString.aspectRatio,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    if (loadingState
                                                .response[index].imageUrls !=
                                            null &&
                                        loadingState.response[index].imageUrls
                                            .isNotEmpty)
                                      AspectRatio(
                                        aspectRatio: StyleString.aspectRatio,
                                        child: LayoutBuilder(
                                            builder: (context, boxConstraints) {
                                          double maxWidth =
                                              boxConstraints.maxWidth;
                                          double maxHeight =
                                              boxConstraints.maxHeight;
                                          return NetworkImgLayer(
                                            width: maxWidth,
                                            height: maxHeight,
                                            src: loadingState.response[index]
                                                .imageUrls.first,
                                          );
                                        }),
                                      ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 2, 6, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              maxLines: 2,
                                              text: TextSpan(
                                                children: [
                                                  for (var i in loadingState
                                                      .response[index]
                                                      .title) ...[
                                                    TextSpan(
                                                      text: i['text'],
                                                      style: TextStyle(
                                                        color: i['type'] == 'em'
                                                            ? Theme.of(context)
                                                                .colorScheme
                                                                .primary
                                                            : Theme.of(context)
                                                                .colorScheme
                                                                .onSurface,
                                                      ),
                                                    ),
                                                  ]
                                                ],
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                                Utils.dateFormat(
                                                    loadingState.response[index]
                                                        .pubTime,
                                                    formatType: 'detail'),
                                                style: textStyle),
                                            Row(
                                              children: [
                                                Text(
                                                    '${loadingState.response[index].view}浏览',
                                                    style: textStyle),
                                                Text(' • ', style: textStyle),
                                                Text(
                                                    '${loadingState.response[index].reply}评论',
                                                    style: textStyle),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    childCount: loadingState.response.length,
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

class ArticlePanelController extends GetxController {
  List orderFiltersList = [
    {'label': '综合排序', 'value': 0, 'order': 'totalrank'},
    {'label': '最新发布', 'value': 1, 'order': 'pubdate'},
    {'label': '最多点击', 'value': 2, 'order': 'click'},
    {'label': '最多喜欢', 'value': 3, 'order': 'attention'},
    {'label': '最多评论', 'value': 4, 'order': 'scores'},
  ];
  List zoneFiltersList = [
    {'label': '全部分区', 'value': 0, 'categoryId': 0},
    {'label': '动画', 'value': 1, 'categoryId': 2},
    {'label': '游戏', 'value': 2, 'categoryId': 1},
    {'label': '影视', 'value': 3, 'categoryId': 28},
    {'label': '生活', 'value': 4, 'categoryId': 3},
    {'label': '兴趣', 'value': 5, 'categoryId': 29},
    {'label': '轻小说', 'value': 6, 'categoryId': 16},
    {'label': '科技', 'value': 7, 'categoryId': 17},
    {'label': '笔记', 'value': 8, 'categoryId': 41},
  ];
  RxInt currentOrderFilterval = 0.obs;
  RxInt currentZoneFilterval = 0.obs;

  onShowFilterDialog(
    BuildContext context,
    SearchPanelController searchPanelCtr,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
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
              const Text('排序', style: TextStyle(fontSize: 16)),
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
                                  tag: 'article${searchPanelCtr.keyword!}');
                          ctr.order.value = item['order'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongPress: (_) {},
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
              const Text('分区', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: zoneFiltersList
                    .map(
                      (item) => SearchText(
                        text: item['label'],
                        onTap: (_) async {
                          Get.back();
                          currentZoneFilterval.value = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                                  tag: 'article${searchPanelCtr.keyword!}');
                          ctr.categoryId = item['categoryId'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongPress: (_) {},
                        bgColor: item['value'] == currentZoneFilterval.value
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : null,
                        textColor: item['value'] == currentZoneFilterval.value
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
