import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/video_card_h.dart';
import 'package:PiliPlus/models/model_hot_video_item.dart';
import 'package:PiliPlus/pages/common/common_search_page.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LaterSearchPage extends CommonSearchPage {
  const LaterSearchPage({super.key});

  @override
  State<LaterSearchPage> createState() => _LaterSearchPageState();
}

class _LaterSearchPageState
    extends CommonSearchPageState<LaterSearchPage, Map, HotVideoItemModel> {
  @override
  final LaterSearchController controller = Get.put(
    LaterSearchController(),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget buildList(List<HotVideoItemModel> list) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: controller.scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 80,
          ),
          sliver: SliverGrid(
            gridDelegate: Grid.videoCardHDelegate(context, minHeight: 110),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == list.length - 1) {
                  controller.onLoadMore();
                }
                final item = list[index];
                return Stack(
                  children: [
                    VideoCardH(
                      videoItem: item,
                      source: 'later',
                      onViewLater: (cid) {
                        PageUtils.toVideoPage(
                          'bvid=${item.bvid}&cid=$cid',
                          arguments: {
                            'videoItem': item,
                            'oid': item.aid,
                            'heroTag': Utils.makeHeroTag(item.bvid),
                            'sourceType': 'watchLater',
                            'count': controller.count,
                            'favTitle': '稍后再看',
                            'mediaId': controller.mid,
                            'desc': false,
                            'isContinuePlaying': index != 0,
                          },
                        );
                      },
                    ),
                    Positioned(
                      top: 5,
                      left: 12,
                      bottom: 5,
                      child: IgnorePointer(
                        child: LayoutBuilder(
                          builder: (context, constraints) => AnimatedOpacity(
                            opacity: item.checked == true ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                            child: Container(
                              alignment: Alignment.center,
                              height: constraints.maxHeight,
                              width: constraints.maxHeight *
                                  StyleString.aspectRatio,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black.withOpacity(0.6),
                              ),
                              child: SizedBox(
                                width: 34,
                                height: 34,
                                child: AnimatedScale(
                                  scale: item.checked == true ? 1 : 0,
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeInOut,
                                  child: IconButton(
                                    tooltip: '取消选择',
                                    style: ButtonStyle(
                                      padding: WidgetStateProperty.all(
                                          EdgeInsets.zero),
                                      backgroundColor:
                                          WidgetStateProperty.resolveWith(
                                        (states) {
                                          return Theme.of(context)
                                              .colorScheme
                                              .surface
                                              .withOpacity(0.8);
                                        },
                                      ),
                                    ),
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.done_all_outlined,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: 0,
                      child: iconButton(
                        tooltip: '移除',
                        context: context,
                        onPressed: () {
                          controller.toViewDel(
                            context,
                            index,
                            item.aid,
                          );
                        },
                        icon: Icons.clear,
                        iconColor:
                            Theme.of(context).colorScheme.onSurfaceVariant,
                        bgColor: Colors.transparent,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
