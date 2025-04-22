import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/models/msg/session.dart';
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

  final SessionList item;
  final Function(bool isTop, int? talkerId) onSetTop;
  final ValueChanged<int?> onRemove;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    dynamic content = item.lastMsg?.content;
    if (content == null || content == "") {
      content = '不支持的消息类型';
    } else {
      dynamic msg = content['text'] ??
          content['content'] ??
          content['title'] ??
          content['reply_content'];
      if (msg == null) {
        if (content['imageType'] != null) {
          msg = '[图片消息]';
        }
      }
      content = msg ?? content.toString();
    }

    return ListTile(
      tileColor: item.topTs == 0
          ? null
          : Theme.of(context).colorScheme.onInverseSurface,
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
                      onSetTop(item.topTs != 0, item.talkerId);
                    },
                    title: Text(
                      item.topTs == 0 ? '置顶' : '移除置顶',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.back();
                      onRemove(item.talkerId);
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
            'talkerId': '${item.talkerId}',
            'name': item.accountInfo?.name ?? '',
            'face': item.accountInfo?.face ?? '',
            if (item.accountInfo?.mid != null)
              'mid': '${item.accountInfo?.mid}',
          },
        );
      },
      leading: Builder(
        builder: (context) {
          Widget buildAvatar() => NetworkImgLayer(
                width: 45,
                height: 45,
                type: 'avatar',
                src: item.accountInfo?.face ?? "",
              );
          return GestureDetector(
            onTap: item.accountInfo?.mid != null
                ? () {
                    Get.toNamed(
                      '/member?mid=${item.accountInfo!.mid}',
                    );
                  }
                : null,
            child: item.unreadCount != null && item.unreadCount! > 0
                ? Badge(
                    label: Text(" ${item.unreadCount} "),
                    alignment: Alignment.topRight,
                    child: buildAvatar(),
                  )
                : buildAvatar(),
          );
        },
      ),
      title: Text(item.accountInfo?.name ?? ""),
      subtitle: Text(
        '$content',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Theme.of(context).colorScheme.outline),
      ),
      trailing: item.lastMsg?.timestamp != null
          ? Text(
              Utils.dateFormat(item.lastMsg!.timestamp, formatType: "day"),
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.outline,
              ),
            )
          : null,
    );
  }
}
