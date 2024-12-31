import 'dart:async';
import 'dart:math';

import 'package:PiliPalaX/pages/video/detail/introduction/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/models/video_detail_res.dart';
import 'package:PiliPalaX/pages/video/detail/index.dart';

import '../../../../../utils/id_utils.dart';

class PagesPanel extends StatefulWidget {
  const PagesPanel({
    super.key,
    required this.bvid,
    required this.changeFuc,
    required this.heroTag,
    required this.showEpisodes,
    required this.videoIntroController,
  });
  final String bvid;
  final Function changeFuc;
  final String heroTag;
  final Function showEpisodes;
  final VideoIntroController videoIntroController;

  @override
  State<PagesPanel> createState() => _PagesPanelState();
}

class _PagesPanelState extends State<PagesPanel> {
  late int cid;
  late int pageIndex;
  late VideoDetailController _videoDetailController;
  final ScrollController _scrollController = ScrollController();
  StreamSubscription? _listener;

  List<Part> get pages => widget.videoIntroController.videoDetail.value.pages!;

  @override
  void initState() {
    super.initState();
    cid = widget.videoIntroController.lastPlayCid.value;
    _videoDetailController =
        Get.find<VideoDetailController>(tag: widget.heroTag);
    pageIndex = pages.indexWhere((Part e) => e.cid == cid);
    _listener = _videoDetailController.cid.listen((int cid) {
      this.cid = cid;
      pageIndex = max(0, pages.indexWhere((Part e) => e.cid == cid));
      if (!mounted) return;
      setState(() {});
      const double itemWidth = 150; // 每个列表项的宽度
      final double targetOffset = min((pageIndex * itemWidth) - (itemWidth / 2),
          _scrollController.position.maxScrollExtent);
      // 滑动至目标位置
      _scrollController.animateTo(
        targetOffset,
        duration: const Duration(milliseconds: 300), // 滑动动画持续时间
        curve: Curves.easeInOut, // 滑动动画曲线
      );
    });
  }

  @override
  void dispose() {
    _listener?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('视频选集 '),
              Expanded(
                child: Text(
                  ' 正在播放：${pages[pageIndex].pagePart}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 34,
                child: TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () => widget.showEpisodes(
                    null,
                    null,
                    pages,
                    widget.bvid,
                    IdUtils.bv2av(widget.bvid),
                    cid,
                  ),
                  child: Text(
                    '共${pages.length}集',
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: pages.length,
            itemExtent: 150,
            itemBuilder: (BuildContext context, int i) {
              bool isCurrentIndex = pageIndex == i;
              return Container(
                width: 150,
                margin: EdgeInsets.only(
                  right: i != pages.length - 1 ? 10 : 0,
                ),
                child: Material(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  borderRadius: BorderRadius.circular(6),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () => {
                      widget.changeFuc(
                        null,
                        widget.bvid,
                        pages[i].cid,
                        IdUtils.bv2av(widget.bvid),
                        null,
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Row(
                        children: <Widget>[
                          if (isCurrentIndex) ...<Widget>[
                            Image.asset(
                              'assets/images/live.png',
                              color: Theme.of(context).colorScheme.primary,
                              height: 12,
                              semanticLabel: "正在播放：",
                            ),
                            const SizedBox(width: 6)
                          ],
                          Expanded(
                              child: Text(
                            pages[i].pagePart!,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 13,
                                color: isCurrentIndex
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.onSurface),
                            overflow: TextOverflow.ellipsis,
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
