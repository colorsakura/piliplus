import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/search_panel/controller.dart';
import 'package:PiliPlus/pages/search_panel/view.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPgcPanel extends CommonSearchPanel {
  const SearchPgcPanel({
    super.key,
    required super.keyword,
    required super.tag,
    required super.searchType,
  });

  @override
  State<SearchPgcPanel> createState() => _SearchPgcPanelState();
}

class _SearchPgcPanelState extends CommonSearchPanelState<SearchPgcPanel,
    SearchMBangumiModel, SearchMBangumiItemModel> {
  @override
  late final controller = Get.put(
    SearchPanelController<SearchMBangumiModel, SearchMBangumiItemModel>(
      keyword: widget.keyword,
      searchType: widget.searchType,
      tag: widget.tag,
    ),
    tag: widget.searchType.name + widget.tag,
  );

  late final TextStyle style = TextStyle(fontSize: 13);

  @override
  Widget buildList(List<SearchMBangumiItemModel> list) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 80),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Grid.smallCardWidth * 2,
          mainAxisExtent: 160,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            if (index == list.length - 1) {
              controller.onLoadMore();
            }
            final i = list[index];
            return InkWell(
              onTap: () {
                PageUtils.viewBangumi(seasonId: i.seasonId);
              },
              onLongPress: () => imageSaveDialog(
                context: context,
                title: i.title?.map((item) => item['text']).join() ?? '',
                cover: i.cover,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: StyleString.safeSpace,
                  vertical: StyleString.cardSpace,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        NetworkImgLayer(
                          width: 111,
                          height: 148,
                          src: i.cover,
                        ),
                        PBadge(
                          text: i.seasonTypeName,
                          top: 6.0,
                          right: 4.0,
                          bottom: null,
                          left: null,
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                              children: [
                                for (var i in i.title!) ...[
                                  TextSpan(
                                    text: i['text'],
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .fontSize!,
                                      fontWeight: FontWeight.bold,
                                      color: i['type'] == 'em'
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text('评分:${i.mediaScore?['score']}', style: style),
                          Row(
                            children: [
                              if (i.areas?.isNotEmpty == true)
                                Text(i.areas!, style: style),
                              const SizedBox(width: 3),
                              const Text('·'),
                              const SizedBox(width: 3),
                              Text(Utils.dateFormat(i.pubtime).toString(),
                                  style: style),
                            ],
                          ),
                          Row(
                            children: [
                              if (i.styles?.isNotEmpty == true)
                                Text(i.styles!, style: style),
                              const SizedBox(width: 3),
                              const Text('·'),
                              const SizedBox(width: 3),
                              if (i.indexShow?.isNotEmpty == true)
                                Text(i.indexShow!, style: style),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: list.length,
        ),
      ),
    );
  }
}
