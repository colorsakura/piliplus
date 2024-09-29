import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/search/widgets/search_text.dart';
import 'package:PiliPalaX/pages/video/detail/reply/view.dart'
    show MySliverPersistentHeaderDelegate;
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import 'package:PiliPalaX/models/common/search_type.dart';
import 'package:PiliPalaX/pages/search_panel/index.dart';

import '../../../common/constants.dart';
import '../../../utils/grid.dart';

class SearchVideoPanel extends StatelessWidget {
  SearchVideoPanel({
    required this.ctr,
    required this.loadingState,
    Key? key,
  }) : super(key: key);

  final SearchPanelController ctr;
  final dynamic loadingState;

  final VideoPanelController controller = Get.put(VideoPanelController());

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: ctr.scrollController,
      slivers: [
        SliverPersistentHeader(
          pinned: false,
          floating: true,
          delegate: MySliverPersistentHeaderDelegate(
            child: Container(
              width: context.width,
              height: 34,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Wrap(
                          // spacing: ,
                          children: [
                            for (var i in controller.filterList) ...[
                              CustomFilterChip(
                                label: i['label'],
                                type: i['type'],
                                selectedType: controller.selectedType.value,
                                callFn: (bool selected) async {
                                  print('selected: $selected');
                                  controller.selectedType.value = i['type'];
                                  ctr.order.value =
                                      i['type'].toString().split('.').last;
                                  SmartDialog.showLoading(msg: 'loading');
                                  await ctr.onRefresh();
                                  SmartDialog.dismiss();
                                },
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(indent: 7, endIndent: 8),
                  const SizedBox(width: 3),
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: IconButton(
                      tooltip: '筛选',
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () =>
                          controller.onShowFilterDialog(context, ctr),
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
        loadingState is Success
            ? SliverPadding(
                padding: EdgeInsets.only(
                  left: StyleString.safeSpace,
                  right: StyleString.safeSpace,
                  bottom: StyleString.safeSpace +
                      MediaQuery.of(context).padding.bottom,
                ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithExtentAndRatio(
                    mainAxisSpacing: StyleString.safeSpace,
                    crossAxisSpacing: StyleString.safeSpace,
                    maxCrossAxisExtent: Grid.maxRowWidth * 2,
                    childAspectRatio: StyleString.aspectRatio * 2.4,
                    mainAxisExtent: 0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return VideoCardH(
                        videoItem: loadingState.response[index],
                        showPubdate: true,
                      );
                    },
                    childCount: loadingState.response.length,
                  ),
                ),
              )
            : HttpError(
                errMsg: loadingState is Error ? loadingState.errMsg : '没有相关数据',
                fn: ctr.onReload,
              ),
      ],
    );
  }
}

class CustomFilterChip extends StatelessWidget {
  const CustomFilterChip({
    this.label,
    this.type,
    this.selectedType,
    this.callFn,
    Key? key,
  }) : super(key: key);

  final String? label;
  final ArchiveFilterType? type;
  final ArchiveFilterType? selectedType;
  final Function? callFn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: FilterChip(
        padding: const EdgeInsets.only(left: 8, right: 8),
        labelPadding: EdgeInsets.zero,
        label: Text(
          label!,
          style: const TextStyle(fontSize: 13),
        ),
        labelStyle: TextStyle(
            color: type == selectedType
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.outline),
        selected: type == selectedType,
        showCheckmark: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        selectedColor: Colors.transparent,
        // backgroundColor:
        //     Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
        backgroundColor: Colors.transparent,
        side: BorderSide.none,
        onSelected: (bool selected) => callFn!(selected),
      ),
    );
  }
}

class VideoPanelController extends GetxController {
  RxList<Map> filterList = [{}].obs;
  Rx<ArchiveFilterType> selectedType = ArchiveFilterType.values.first.obs;
  List timeFiltersList = [
    {'label': '全部时长', 'value': 0},
    {'label': '0-10分钟', 'value': 1},
    {'label': '10-30分钟', 'value': 2},
    {'label': '30-60分钟', 'value': 3},
    {'label': '60分钟+', 'value': 4},
  ];
  List zoneFiltersList = [
    {'label': '全部', 'value': 0},
    {'label': '动画', 'value': 1, 'tids': 1},
    {'label': '番剧', 'value': 2, 'tids': 13},
    {'label': '国创', 'value': 3, 'tids': 167},
    {'label': '音乐', 'value': 4, 'tids': 3},
    {'label': '舞蹈', 'value': 5, 'tids': 129},
    {'label': '游戏', 'value': 6, 'tids': 4},
    {'label': '知识', 'value': 7, 'tids': 36},
    {'label': '科技', 'value': 8, 'tids': 188},
    {'label': '运动', 'value': 9, 'tids': 234},
    {'label': '汽车', 'value': 10, 'tids': 223},
    {'label': '生活', 'value': 11, 'tids': 160},
    {'label': '美食', 'value': 12, 'tids': 221},
    {'label': '动物', 'value': 13, 'tids': 217},
    {'label': '鬼畜', 'value': 14, 'tids': 119},
    {'label': '时尚', 'value': 15, 'tids': 155},
    {'label': '资讯', 'value': 16, 'tids': 202},
    {'label': '娱乐', 'value': 17, 'tids': 5},
    {'label': '影视', 'value': 18, 'tids': 181},
    {'label': '记录', 'value': 19, 'tids': 177},
    {'label': '电影', 'value': 20, 'tids': 23},
    {'label': '电视', 'value': 21, 'tids': 11},
  ];
  int currentTimeFilterval = 0;
  int currentZoneFilterval = 0;

  @override
  void onInit() {
    List<Map<String, dynamic>> list = ArchiveFilterType.values
        .map((type) => {
              'label': type.description,
              'type': type,
            })
        .toList();
    filterList.value = list;
    super.onInit();
  }

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
              const Text('时长', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: timeFiltersList
                    .map(
                      (item) => SearchText(
                        searchText: item['label'],
                        onSelect: (text) async {
                          Get.back();
                          currentTimeFilterval = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                                  tag: 'video${searchPanelCtr.keyword!}');
                          ctr.duration.value = item['value'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongSelect: (_) {},
                        bgColor: item['value'] == currentTimeFilterval
                            ? Theme.of(context).colorScheme.primaryContainer
                            : null,
                        textColor: item['value'] == currentTimeFilterval
                            ? Theme.of(context).colorScheme.onPrimaryContainer
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
                        searchText: item['label'],
                        onSelect: (text) async {
                          Get.back();
                          currentZoneFilterval = item['value'];
                          SmartDialog.dismiss();
                          SmartDialog.showToast("「${item['label']}」的筛选结果");
                          SearchPanelController ctr =
                              Get.find<SearchPanelController>(
                                  tag: 'video${searchPanelCtr.keyword!}');
                          ctr.tids = item['tids'];
                          SmartDialog.showLoading(msg: 'loading');
                          await ctr.onRefresh();
                          SmartDialog.dismiss();
                        },
                        onLongSelect: (_) {},
                        bgColor: item['value'] == currentZoneFilterval
                            ? Theme.of(context).colorScheme.primaryContainer
                            : null,
                        textColor: item['value'] == currentZoneFilterval
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
