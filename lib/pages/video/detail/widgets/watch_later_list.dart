import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/stat/danmu.dart';
import 'package:PiliPlus/common/widgets/stat/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/video/later.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MediaListPanel extends StatefulWidget {
  const MediaListPanel({
    super.key,
    required this.mediaList,
    this.changeMediaList,
    this.panelTitle,
    required this.getBvId,
    required this.loadMoreMedia,
    required this.count,
    required this.desc,
    required this.onReverse,
    required this.loadPrevious,
  });

  final List<MediaVideoItemModel> mediaList;
  final Function? changeMediaList;
  final String? panelTitle;
  final Function getBvId;
  final VoidCallback loadMoreMedia;
  final int? count;
  final bool desc;
  final VoidCallback onReverse;
  final Function? loadPrevious;

  @override
  State<MediaListPanel> createState() => _MediaListPanelState();
}

class _MediaListPanelState extends State<MediaListPanel> {
  final _scrollController = ItemScrollController();
  late RxBool desc;

  @override
  void initState() {
    super.initState();
    desc = widget.desc.obs;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      int index =
          widget.mediaList.indexWhere((item) => item.bvid == widget.getBvId());
      if (index != -1 && index != 0) {
        try {
          _scrollController.jumpTo(index: index);
        } catch (_) {}
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 45,
            automaticallyImplyLeading: false,
            titleSpacing: 16,
            title: Text(widget.panelTitle ?? '稍后再看'),
            actions: [
              Obx(
                () => mediumButton(
                  tooltip: desc.value ? '顺序播放' : '倒序播放',
                  icon: desc.value
                      ? MdiIcons.sortAscending
                      : MdiIcons.sortDescending,
                  onPressed: () {
                    widget.onReverse();
                    desc.value = !desc.value;
                  },
                ),
              ),
              mediumButton(
                tooltip: '关闭',
                icon: Icons.close,
                onPressed: Get.back,
              ),
              const SizedBox(width: 14),
            ],
          ),
          Expanded(
            child: Material(
              color: Theme.of(context).colorScheme.surface,
              child: widget.loadPrevious != null
                  ? refreshIndicator(
                      onRefresh: () async {
                        await widget.loadPrevious!();
                      },
                      child: _buildList,
                    )
                  : _buildList,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildList => Obx(
        () => ScrollablePositionedList.builder(
          itemScrollController: _scrollController,
          itemCount: widget.mediaList.length,
          padding: EdgeInsets.only(
            bottom: MediaQuery.paddingOf(context).bottom + 80,
          ),
          itemBuilder: ((context, index) {
            var item = widget.mediaList[index];
            if (index == widget.mediaList.length - 1 &&
                (widget.count == null ||
                    widget.mediaList.length < widget.count!)) {
              widget.loadMoreMedia();
            }
            return InkWell(
              onTap: () async {
                if (item.type != 2) {
                  SmartDialog.showToast('不支持播放该类型视频');
                  return;
                }
                Get.back();
                String bvid = item.bvid!;
                int? aid = item.id;
                String cover = item.cover ?? '';
                final int cid =
                    item.cid ?? await SearchHttp.ab2c(aid: aid, bvid: bvid);
                widget.changeMediaList?.call(bvid, cid, aid, cover);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: LayoutBuilder(
                  builder: (context, boxConstraints) {
                    const double width = 120;
                    return Container(
                      constraints: const BoxConstraints(minHeight: 88),
                      height: width / StyleString.aspectRatio,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: StyleString.aspectRatio,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints boxConstraints) {
                                final double maxWidth = boxConstraints.maxWidth;
                                final double maxHeight =
                                    boxConstraints.maxHeight;
                                return Stack(
                                  children: [
                                    NetworkImgLayer(
                                      src: item.cover ?? '',
                                      width: maxWidth,
                                      height: maxHeight,
                                    ),
                                    PBadge(
                                      text: Utils.timeFormat(item.duration!),
                                      right: 6.0,
                                      bottom: 6.0,
                                      type: 'gray',
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 6, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title as String,
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: item.bvid == widget.getBvId()
                                          ? FontWeight.bold
                                          : null,
                                      color: item.bvid == widget.getBvId()
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : null,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    item.upper?.name as String,
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .fontSize,
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      statView(
                                        context: context,
                                        theme: 'gray',
                                        view: item.cntInfo!['play'] as int,
                                      ),
                                      const SizedBox(width: 8),
                                      statDanMu(
                                        context: context,
                                        theme: 'gray',
                                        danmu: item.cntInfo!['danmaku'] as int,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          }),
        ),
      );
}
