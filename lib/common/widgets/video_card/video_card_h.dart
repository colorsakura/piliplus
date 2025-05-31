import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/progress_bar/video_progress_indicator.dart';
import 'package:PiliPlus/common/widgets/stat/stat.dart';
import 'package:PiliPlus/common/widgets/video_popup_menu.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/badge_type.dart';
import 'package:PiliPlus/models/model_hot_video_item.dart';
import 'package:PiliPlus/models/model_video.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

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
    this.onViewLater,
  });
  final BaseVideoItemModel videoItem;
  final String source;
  final bool showOwner;
  final bool showView;
  final bool showDanmaku;
  final bool showPubdate;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final ValueChanged<int>? onViewLater;

  @override
  Widget build(BuildContext context) {
    final int aid = videoItem.aid!;
    final String bvid = videoItem.bvid!;
    String type = 'video';
    if (videoItem case SearchVideoItemModel item) {
      var typeOrNull = item.type;
      if (typeOrNull?.isNotEmpty == true) {
        type = typeOrNull!;
      }
    }
    return Material(
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Semantics(
            label: Utils.videoItemSemantics(videoItem),
            excludeSemantics: true,
            child: InkWell(
              onLongPress: () {
                if (onLongPress != null) {
                  onLongPress!();
                } else {
                  imageSaveDialog(
                    title: videoItem.title,
                    cover: videoItem.pic,
                  );
                }
              },
              onTap: () async {
                if (onTap != null) {
                  onTap!();
                  return;
                }
                if (type == 'ketang') {
                  SmartDialog.showToast('课堂视频暂不支持播放');
                  return;
                } else if (type == 'live_room') {
                  if (videoItem case SearchVideoItemModel item) {
                    int? roomId = item.id;
                    if (roomId != null) {
                      Get.toNamed('/liveRoom?roomid=$roomId');
                    }
                  } else {
                    SmartDialog.showToast(
                        'err: live_room : ${videoItem.runtimeType}');
                  }
                  return;
                }
                if (videoItem case HotVideoItemModel item) {
                  if (item.redirectUrl?.isNotEmpty == true &&
                      PageUtils.viewPgcFromUri(item.redirectUrl!)) {
                    return;
                  }
                }
                try {
                  final int? cid = videoItem.cid ??
                      await SearchHttp.ab2c(aid: aid, bvid: bvid);
                  if (cid != null) {
                    if (source == 'later') {
                      onViewLater!(cid);
                    } else {
                      PageUtils.toVideoPage(
                        'bvid=$bvid&cid=$cid',
                        arguments: {
                          'videoItem': videoItem,
                          'heroTag': Utils.makeHeroTag(aid)
                        },
                      );
                    }
                  }
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
                        builder: (context, boxConstraints) {
                          final double maxWidth = boxConstraints.maxWidth;
                          final double maxHeight = boxConstraints.maxHeight;
                          num? progress;
                          if (videoItem case HotVideoItemModel item) {
                            progress = item.progress;
                          }

                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              NetworkImgLayer(
                                src: videoItem.pic,
                                width: maxWidth,
                                height: maxHeight,
                              ),
                              if (videoItem case HotVideoItemModel item)
                                PBadge(
                                  text: item.pgcLabel,
                                  top: 6.0,
                                  right: 6.0,
                                ),
                              if (progress != null && progress != 0) ...[
                                PBadge(
                                  text: progress == -1
                                      ? '已看完'
                                      : '${Utils.timeFormat(progress)}/${Utils.timeFormat(videoItem.duration)}',
                                  right: 6,
                                  bottom: 8,
                                  type: PBadgeType.gray,
                                ),
                                Positioned(
                                  left: 0,
                                  bottom: 0,
                                  right: 0,
                                  child: videoProgressIndicator(
                                    progress == -1
                                        ? 1
                                        : progress / videoItem.duration,
                                  ),
                                )
                              ] else if (videoItem.duration > 0)
                                PBadge(
                                  text: Utils.timeFormat(videoItem.duration),
                                  right: 6.0,
                                  bottom: 6.0,
                                  type: PBadgeType.gray,
                                ),
                              if (type != 'video')
                                PBadge(
                                  text: type,
                                  left: 6.0,
                                  bottom: 6.0,
                                  type: PBadgeType.primary,
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    videoContent(context),
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
        ],
      ),
    );
  }

  Widget videoContent(BuildContext context) {
    final theme = Theme.of(context);
    String pubdate = showPubdate
        ? Utils.dateFormat(videoItem.pubdate!, formatType: 'day')
        : '';
    if (pubdate != '') pubdate += ' ';
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (videoItem case SearchVideoItemModel item) ...[
            if (item.titleList?.isNotEmpty == true)
              Expanded(
                child: Text.rich(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  TextSpan(
                    children: [
                      for (var i in item.titleList!)
                        TextSpan(
                          text: i['text'],
                          style: TextStyle(
                            fontSize: theme.textTheme.bodyMedium!.fontSize,
                            height: 1.42,
                            letterSpacing: 0.3,
                            color: i['type'] == 'em'
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurface,
                          ),
                        ),
                    ],
                  ),
                ),
              )
          ] else
            Expanded(
              child: Text(
                videoItem.title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: theme.textTheme.bodyMedium!.fontSize,
                  height: 1.42,
                  letterSpacing: 0.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          if (showOwner || showPubdate)
            Text(
              "$pubdate ${showOwner ? videoItem.owner.name : ''}",
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                height: 1,
                color: theme.colorScheme.outline,
                overflow: TextOverflow.clip,
              ),
            ),
          const SizedBox(height: 3),
          Row(
            children: [
              if (showView) ...[
                StatView(
                  context: context,
                  theme: 'gray',
                  value: videoItem.stat.viewStr,
                ),
                const SizedBox(width: 8),
              ],
              if (showDanmaku)
                StatDanMu(
                  context: context,
                  theme: 'gray',
                  value: videoItem.stat.danmuStr,
                ),
              const Spacer(),
              if (source == 'normal') const SizedBox(width: 24),
            ],
          ),
        ],
      ),
    );
  }
}
