import 'package:PiliPalaX/common/widgets/image_save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import '../../http/search.dart';
import '../../utils/utils.dart';
import '../constants.dart';
import 'badge.dart';
import 'network_img_layer.dart';
import 'stat/danmu.dart';
import 'stat/view.dart';
import 'video_popup_menu.dart';

// 视频卡片 - 水平布局
class VideoCardH extends StatelessWidget {
  const VideoCardH({
    super.key,
    required this.videoItem,
    this.source = 'normal',
    this.showOwner = true,
    this.showView = true,
    this.showDanmaku = true,
    this.showPubdate = false,
    this.onTap,
    this.onLongPress,
  });
  final dynamic videoItem;
  final String source;
  final bool showOwner;
  final bool showView;
  final bool showDanmaku;
  final bool showPubdate;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    final int aid = videoItem.aid;
    final String bvid = videoItem.bvid;
    String type = 'video';
    try {
      type = videoItem.type;
    } catch (_) {}
    final String heroTag = Utils.makeHeroTag(aid);
    return Stack(children: [
      Semantics(
        label: Utils.videoItemSemantics(videoItem),
        excludeSemantics: true,
        // customSemanticsActions: <CustomSemanticsAction, void Function()>{
        //   for (var item in actions)
        //     CustomSemanticsAction(
        //         label: item.title.isEmpty ? 'label' : item.title): item.onTap!,
        // },
        child: InkWell(
          onLongPress: () {
            if (onLongPress != null) {
              onLongPress!();
            } else {
              imageSaveDialog(
                context: context,
                title: videoItem.title is String
                    ? videoItem.title
                    : videoItem.title is List
                        ? (videoItem.title as List)
                            .map((item) => item['text'])
                            .join()
                        : '',
                cover: videoItem.pic,
              );
            }
          },
          onTap: () async {
            if (onTap != null) {
              onTap?.call();
              return;
            }
            if (type == 'ketang') {
              SmartDialog.showToast('课堂视频暂不支持播放');
              return;
            }
            try {
              final int cid =
                  videoItem.cid ?? await SearchHttp.ab2c(aid: aid, bvid: bvid);
              Get.toNamed('/video?bvid=$bvid&cid=$cid',
                  arguments: {'videoItem': videoItem, 'heroTag': heroTag});
            } catch (err) {
              SmartDialog.showToast(err.toString());
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: StyleString.safeSpace,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: StyleString.aspectRatio,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints boxConstraints) {
                      final double maxWidth = boxConstraints.maxWidth;
                      final double maxHeight = boxConstraints.maxHeight;
                      return Stack(
                        children: [
                          Hero(
                            tag: heroTag,
                            child: NetworkImgLayer(
                              src: videoItem.pic as String,
                              width: maxWidth,
                              height: maxHeight,
                            ),
                          ),
                          if (videoItem.duration != 0)
                            PBadge(
                              text: Utils.timeFormat(videoItem.duration!),
                              right: 6.0,
                              bottom: 6.0,
                              type: 'gray',
                            ),
                          if (type != 'video')
                            PBadge(
                              text: type,
                              left: 6.0,
                              bottom: 6.0,
                              type: 'primary',
                            ),
                          // if (videoItem.rcmdReason != null &&
                          //     videoItem.rcmdReason.content != '')
                          //   pBadge(videoItem.rcmdReason.content, context,
                          //       6.0, 6.0, null, null),
                        ],
                      );
                    },
                  ),
                ),
                videoContent(context)
              ],
            ),
          ),
        ),
      ),
      if (source == 'normal')
        Positioned(
          bottom: 0,
          right: 12,
          child: VideoPopupMenu(
            size: 29,
            iconSize: 17,
            videoItem: videoItem,
          ),
        ),
    ]);
  }

  Widget videoContent(context) {
    String pubdate = showPubdate
        ? Utils.dateFormat(videoItem.pubdate!, formatType: 'day')
        : '';
    if (pubdate != '') pubdate += ' ';
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 6, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (videoItem.title is String)
              Expanded(
                child: Text(
                  videoItem.title as String,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    height: 1.42,
                    letterSpacing: 0.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            else
              Expanded(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textScaler: MediaQuery.textScalerOf(context),
                  text: TextSpan(
                    children: [
                      for (final i in videoItem.title) ...[
                        TextSpan(
                          text: i['text'] as String,
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize,
                            letterSpacing: 0.3,
                            color: i['type'] == 'em'
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            // const Spacer(),
            // if (videoItem.rcmdReason != null &&
            //     videoItem.rcmdReason.content != '')
            //   Container(
            //     padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(4),
            //       border: Border.all(
            //           color: Theme.of(context).colorScheme.surfaceTint),
            //     ),
            //     child: Text(
            //       videoItem.rcmdReason.content,
            //       style: TextStyle(
            //           fontSize: 9,
            //           color: Theme.of(context).colorScheme.surfaceTint),
            //     ),
            //   ),
            // const SizedBox(height: 4),
            if (showOwner || showPubdate)
              Expanded(
                flex: 0,
                child: Text(
                  "$pubdate ${showOwner ? videoItem.owner.name : ''}",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
                    height: 1,
                    color: Theme.of(context).colorScheme.outline,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            const SizedBox(height: 3),
            Row(
              children: [
                if (showView) ...[
                  statView(
                    context: context,
                    theme: 'gray',
                    view: videoItem.stat.view as int,
                  ),
                  const SizedBox(width: 8),
                ],
                if (showDanmaku)
                  statDanMu(
                    context: context,
                    theme: 'gray',
                    danmu: videoItem.stat.danmu as int,
                  ),
                const Spacer(),
                if (source == 'normal') const SizedBox(width: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
