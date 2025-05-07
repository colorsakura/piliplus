import 'dart:convert';

import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/image_preview_type.dart';
import 'package:PiliPlus/models/common/msg/msg_type.dart';
import 'package:PiliPlus/models/msg/session.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class ChatItem extends StatelessWidget {
  final MessageItem item;
  final List? eInfos;
  final VoidCallback? onLongPress;

  const ChatItem({
    super.key,
    required this.item,
    this.eInfos,
    this.onLongPress,
  }) : isOwner = onLongPress != null;

  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    bool isPic = item.msgType == MsgType.pic.value; // 图片
    // bool isText = item.msgType == MsgType.text.value; // 文本
    // bool isArchive = item.msgType == 11; // 投稿
    // bool isArticle = item.msgType == 12; // 专栏
    bool isRevoke = item.msgType == MsgType.revoke.value; // 撤回消息
    // bool isShareV2 = item.msgType == MsgType.share_v2.value;
    bool isSystem = item.msgType == MsgType.notifyText.value ||
        item.msgType == MsgType.notifyMsg.value ||
        item.msgType == MsgType.picCard.value ||
        item.msgType == MsgType.autoReplyPush.value;
    dynamic content = item.content ?? '';
    final ThemeData theme = Theme.of(context);
    Color textColor() {
      return isOwner
          ? theme.colorScheme.onSecondaryContainer
          : theme.colorScheme.onSurfaceVariant;
    }

    Widget richTextMessage(BuildContext context) {
      var text = content['content'];
      if (eInfos != null) {
        final List<InlineSpan> children = [];
        Map<String, Map> emojiMap = {};
        for (var e in eInfos!) {
          emojiMap[e['text']] = {
            'url': e['gif_url'] ?? e['url'],
            'size': e['size'] ?? 1,
          };
        }
        text.splitMapJoin(
          RegExp(r"\[[^\[\]]+\]"),
          onMatch: (Match match) {
            final String emojiKey = match[0]!;
            if (emojiMap.containsKey(emojiKey)) {
              final double size = 24.0 * emojiMap[emojiKey]!['size'];
              children.add(WidgetSpan(
                child: NetworkImgLayer(
                  width: size,
                  height: size,
                  src: emojiMap[emojiKey]!['url'],
                  type: 'emote',
                ),
              ));
            } else {
              children.add(TextSpan(
                text: emojiKey,
                style: TextStyle(
                  color: textColor(),
                  letterSpacing: 0.6,
                  height: 1.5,
                ),
              ));
            }
            return '';
          },
          onNonMatch: (String text) {
            children.add(
              TextSpan(
                text: text,
                style: TextStyle(
                  color: textColor(),
                  letterSpacing: 0.6,
                  height: 1.5,
                ),
              ),
            );
            return '';
          },
        );
        return SelectableText.rich(
          TextSpan(
            children: children,
          ),
        );
      } else {
        return SelectableText(
          text,
          style: TextStyle(
            letterSpacing: 0.6,
            color: textColor(),
            height: 1.5,
          ),
        );
      }
    }

    Widget messageContent(BuildContext context) {
      switch (MsgType.parse(item.msgType!)) {
        case MsgType.notifyMsg:
          return systemNotice(theme);
        case MsgType.picCard:
          return systemNotice2();
        case MsgType.notifyText:
          return Text(
            jsonDecode(content['content'])
                .map((m) => m['text'] as String)
                .join("\n"),
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 0.6,
              height: 5,
              color: theme.colorScheme.outline.withOpacity(0.8),
            ),
          );
        case MsgType.text:
          return richTextMessage(context);
        case MsgType.pic:
          return GestureDetector(
            onTap: () {
              context.imageView(
                imgList: [
                  SourceModel(url: content['url']),
                ],
              );
            },
            child: Hero(
              tag: content['url'],
              child: NetworkImgLayer(
                width: 220,
                height: 220 * content['height'] / content['width'],
                src: content['url'],
              ),
            ),
          );
        case MsgType.shareV2:
          String? type;
          GestureTapCallback onTap;
          switch (content['source']) {
            // album
            case 2:
              type = '相簿';
              onTap = () {
                PageUtils.pushDynFromId(rid: content['id']);
              };
              break;

            // video
            case 5:
              type = '视频';
              onTap = () async {
                dynamic aid = content['id'];
                if (aid is String) {
                  aid = int.tryParse(aid);
                }
                dynamic bvid = content["bvid"];
                if (aid == null && bvid == null) {
                  SmartDialog.showToast('null');
                }
                bvid ??= IdUtils.av2bv(aid);
                SmartDialog.showLoading();
                final int cid = await SearchHttp.ab2c(bvid: bvid);
                SmartDialog.dismiss<dynamic>().then(
                  (e) => PageUtils.toVideoPage(
                    'bvid=$bvid&cid=$cid',
                    arguments: <String, String?>{
                      'pic': content['thumb'],
                      'heroTag': Utils.makeHeroTag(bvid),
                    },
                  ),
                );
              };
              break;

            // article
            case 6:
              type = '专栏';
              onTap = () {
                Get.toNamed(
                  '/articlePage',
                  parameters: {
                    'id': '${content['id']}',
                    'type': 'read',
                  },
                );
              };
              break;

            // dynamic
            case 11:
              type = '动态';
              onTap = () {
                PageUtils.pushDynFromId(id: content['id']);
              };
              break;

            // pgc
            case 16:
              onTap = () {
                PageUtils.viewBangumi(epId: content['id']);
              };
              break;

            default:
              onTap = () {
                SmartDialog.showToast(
                    'unsupported source type: ${content['source']}');
              };
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onTap,
                child: NetworkImgLayer(
                  width: 220,
                  height: 220 * 9 / 16,
                  src: content['thumb'],
                ),
              ),
              const SizedBox(height: 6),
              Text(
                content['title'] ?? "",
                style: TextStyle(
                  letterSpacing: 0.6,
                  height: 1.5,
                  color: textColor(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (content['source'] == 6 &&
                  (content['headline'] as String?)?.isNotEmpty == true) ...[
                const SizedBox(height: 1),
                Text(
                  content['headline'],
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              if (content['author'] != null) ...[
                const SizedBox(height: 1),
                Text(
                  '${content['author']}${type != null ? ' · $type' : ''}',
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor().withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            ],
          );
        case MsgType.archiveCard:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  try {
                    SmartDialog.showLoading();
                    var bvid = content["bvid"];
                    final int cid = await SearchHttp.ab2c(bvid: bvid);
                    SmartDialog.dismiss().then(
                      (_) => PageUtils.toVideoPage(
                        'bvid=$bvid&cid=$cid',
                        arguments: {
                          'pic': content['thumb'],
                          'heroTag': Utils.makeHeroTag(bvid),
                        },
                      ),
                    );
                  } catch (err) {
                    SmartDialog.dismiss();
                    SmartDialog.showToast(err.toString());
                  }
                },
                child: NetworkImgLayer(
                  width: 220,
                  height: 220 * 9 / 16,
                  src: content['cover'],
                ),
              ),
              const SizedBox(height: 6),
              SelectableText(
                content['title'],
                style: TextStyle(
                  letterSpacing: 0.6,
                  height: 1.5,
                  color: textColor(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                Utils.timeFormat(content['times']),
                style: TextStyle(
                  letterSpacing: 0.6,
                  height: 1.5,
                  color: textColor().withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ],
          );
        case MsgType.autoReplyPush:
          return Container(
              constraints: const BoxConstraints(
                maxWidth: 300.0, // 设置最大宽度为200.0
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(16),
                ),
              ),
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content['main_title'],
                    style: TextStyle(
                      letterSpacing: 0.6,
                      height: 1.5,
                      color: textColor(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var i in content['sub_cards']) ...<Widget>[
                    const SizedBox(height: 6),
                    GestureDetector(
                        onTap: () async {
                          RegExp bvRegex = RegExp(r'BV[0-9A-Za-z]{10}',
                              caseSensitive: false);
                          Iterable<Match> matches =
                              bvRegex.allMatches(i['jump_url']);
                          if (matches.isNotEmpty) {
                            Match match = matches.first;
                            String bvid = match.group(0)!;
                            try {
                              SmartDialog.showLoading();
                              final int cid = await SearchHttp.ab2c(bvid: bvid);
                              SmartDialog.dismiss<dynamic>().then(
                                (e) => PageUtils.toVideoPage(
                                    'bvid=$bvid&cid=$cid',
                                    arguments: <String, String?>{
                                      'pic': i['cover_url'],
                                      'heroTag': Utils.makeHeroTag(bvid),
                                    }),
                              );
                            } catch (err) {
                              SmartDialog.dismiss();
                              SmartDialog.showToast(err.toString());
                            }
                          } else {
                            SmartDialog.showToast('未匹配到 BV 号');
                            PageUtils.handleWebview(i['jump_url']);
                          }
                        },
                        child: Row(
                          children: [
                            NetworkImgLayer(
                              width: 130,
                              height: 130 * 9 / 16,
                              src: i['cover_url'],
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  i['field1'],
                                  maxLines: 2,
                                  style: TextStyle(
                                    letterSpacing: 0.6,
                                    height: 1.5,
                                    color: textColor(),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  i['field2'],
                                  style: TextStyle(
                                    letterSpacing: 0.6,
                                    height: 1.5,
                                    color: textColor().withOpacity(0.6),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  i['field3'],
                                  style: TextStyle(
                                    letterSpacing: 0.6,
                                    height: 1.5,
                                    color: textColor().withOpacity(0.6),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        )),
                  ],
                ],
              ));
        case MsgType.articleCard:
          return GestureDetector(
            onTap: () {
              Get.toNamed(
                '/articlePage',
                parameters: {
                  'id': '${content['rid']}',
                  'type': "read",
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (var i in content['image_urls'])
                      NetworkImgLayer(
                        width: 130,
                        height: 130 * 9 / 16,
                        src: i,
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                SelectableText(
                  content['title'] ?? "",
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 1),
                SelectableText(
                  content['summary'] ?? "",
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor().withOpacity(0.6),
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          );
        case MsgType.commonShare:
          if (content['source'] == '直播') {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/liveRoom?roomid=${content['sourceID']}');
                  },
                  child: NetworkImgLayer(
                    width: 220,
                    height: 220 * 9 / 16,
                    src: content['cover'],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  content['title'] ?? "",
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  '${content['author']} · 直播',
                  style: TextStyle(
                    letterSpacing: 0.6,
                    height: 1.5,
                    color: textColor().withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            );
          } else {
            return Text(
              content != null && content != ''
                  ? (content['content'] ?? content.toString())
                  : '不支持的消息类型',
              style: TextStyle(
                letterSpacing: 0.6,
                height: 1.5,
                color: textColor(),
                fontWeight: FontWeight.bold,
              ),
            );
          }
        default:
          return Text(
            content != null && content != ''
                ? (content['content'] ?? content.toString())
                : '不支持的消息类型',
            style: TextStyle(
              letterSpacing: 0.6,
              height: 1.5,
              color: textColor(),
              fontWeight: FontWeight.bold,
            ),
          );
      }
    }

    return isSystem
        ? messageContent(context)
        : isRevoke
            ? const SizedBox.shrink()
            : GestureDetector(
                onLongPress: () {
                  Feedback.forLongPress(context);
                  onLongPress?.call();
                },
                child: Row(
                  children: [
                    if (!isOwner) const SizedBox(width: 12),
                    if (isOwner) const Spacer(),
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 300.0, // 设置最大宽度为200.0
                      ),
                      decoration: BoxDecoration(
                        color: isOwner
                            ? theme.colorScheme.secondaryContainer
                            : theme.colorScheme.onInverseSurface,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(16),
                          topRight: const Radius.circular(16),
                          bottomLeft: Radius.circular(isOwner ? 16 : 6),
                          bottomRight: Radius.circular(isOwner ? 6 : 16),
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 12),
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                        left: isPic ? 8 : 12,
                        right: isPic ? 8 : 12,
                      ),
                      child: Column(
                        crossAxisAlignment: isOwner
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          messageContent(context),
                          SizedBox(height: isPic ? 7 : 2),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Utils.dateFormat(item.timestamp),
                                style: theme.textTheme.labelSmall!.copyWith(
                                    color: isOwner
                                        ? theme.colorScheme.onSecondaryContainer
                                            .withOpacity(0.8)
                                        : theme.colorScheme.onSurfaceVariant
                                            .withOpacity(0.8)),
                              ),
                              if (item.msgStatus == 1)
                                Text(
                                  '  已撤回',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    if (!isOwner) const Spacer(),
                    if (isOwner) const SizedBox(width: 12),
                  ],
                ),
              );
  }

  Widget systemNotice(ThemeData theme) {
    return Row(
      children: [
        const SizedBox(width: 12),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 300.0, // 设置最大宽度为200.0
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.4),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(16),
            ),
          ),
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(item.content['title'],
                  style: theme.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
              Text(
                Utils.dateFormat(item.timestamp),
                style: theme.textTheme.labelSmall!
                    .copyWith(color: theme.colorScheme.outline),
              ),
              Divider(
                color: theme.colorScheme.primary.withOpacity(0.05),
              ),
              SelectableText(
                item.content['text'],
              )
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget systemNotice2() {
    return Row(
      children: [
        const SizedBox(width: 12),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 300.0, // 设置最大宽度为200.0
          ),
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.only(bottom: 6),
          child: NetworkImgLayer(
            width: 320,
            height: 150,
            src: item.content['pic_url'],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
