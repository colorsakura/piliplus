import 'dart:convert';

import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart'
    show Session, UnreadStyle;
import 'package:PiliPlus/models/common/badge_type.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhisperSessionItem extends StatelessWidget {
  const WhisperSessionItem({
    super.key,
    required this.item,
    required this.onSetTop,
    required this.onRemove,
    required this.onTap,
  });

  final Session item;
  final Function(bool isTop, int? talkerId) onSetTop;
  final ValueChanged<int?> onRemove;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Map? vipInfo = item.sessionInfo.hasVipInfo()
        ? jsonDecode(item.sessionInfo.vipInfo)
        : null;
    final ThemeData theme = Theme.of(context);
    return ListTile(
      tileColor: item.isPinned ? theme.colorScheme.onInverseSurface : null,
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              clipBehavior: Clip.hardEdge,
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.back();
                      onSetTop(
                        item.isPinned,
                        item.id.privateId.talkerUid.toInt(),
                      );
                    },
                    title: Text(
                      item.isPinned ? '移除置顶' : '置顶',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.back();
                      onRemove(item.id.privateId.talkerUid.toInt());
                    },
                    title: const Text(
                      '删除',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      onTap: () {
        onTap();
        Get.toNamed(
          '/whisperDetail',
          parameters: {
            'talkerId': item.id.privateId.talkerUid.toString(),
            'name': item.sessionInfo.sessionName,
            'face': item.sessionInfo.avatar.fallbackLayers.layers.first.resource
                .resImage.imageSrc.remote.url,
            if (item.sessionInfo.avatar.hasMid())
              'mid': item.sessionInfo.avatar.mid.toString(),
          },
        );
      },
      leading: Builder(
        builder: (context) {
          Widget buildAvatar() => NetworkImgLayer(
                width: 45,
                height: 45,
                type: 'avatar',
                src: item.sessionInfo.avatar.fallbackLayers.layers.first
                    .resource.resImage.imageSrc.remote.url,
              );
          return GestureDetector(
            onTap: item.sessionInfo.avatar.hasMid()
                ? () {
                    Get.toNamed(
                      '/member?mid=${item.sessionInfo.avatar.mid}',
                    );
                  }
                : null,
            child: item.hasUnread() &&
                    item.unread.style != UnreadStyle.UNREAD_STYLE_NONE
                ? Badge(
                    label: item.unread.style == UnreadStyle.UNREAD_STYLE_NUMBER
                        ? Text(" ${item.unread.number} ")
                        : null,
                    alignment: Alignment.topRight,
                    child: buildAvatar(),
                  )
                : buildAvatar(),
          );
        },
      ),
      title: Row(
        children: [
          Text(
            item.sessionInfo.sessionName,
            style: TextStyle(
              color: vipInfo?['status'] != null &&
                      vipInfo!['status'] > 0 &&
                      vipInfo['type'] == 2
                  ? context.vipColor
                  : null,
            ),
          ),
          if (item.sessionInfo.userLabel.style.borderedLabel.hasText()) ...[
            const SizedBox(width: 5),
            PBadge(
              isStack: false,
              type: PBadgeType.line_secondary,
              fontSize: 10,
              isBold: false,
              text: item.sessionInfo.userLabel.style.borderedLabel.text,
            ),
          ],
          if (item.sessionInfo.isLive) ...[
            const SizedBox(width: 5),
            Image.asset('assets/images/live/live.gif', height: 15),
          ],
        ],
      ),
      subtitle: Text(
        item.msgSummary.rawMsg,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.labelMedium!
            .copyWith(color: theme.colorScheme.outline),
      ),
      trailing: item.hasTimestamp()
          ? Text(
              Utils.dateFormat((item.timestamp ~/ 1000000).toInt(),
                  formatType: "day"),
              style: TextStyle(
                fontSize: 12,
                color: theme.colorScheme.outline,
              ),
            )
          : null,
    );
  }
}
