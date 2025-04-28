import 'package:PiliPlus/common/widgets/image_view.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/utils/app_scheme.dart';

// 富文本
InlineSpan? richNode(item, BuildContext context) {
  final spacer = _VerticalSpaceSpan(0.0);
  try {
    TextStyle authorStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    List<InlineSpan> spanChildren = [];

    List<RichTextNodeItem>? richTextNodes;
    if (item.modules.moduleDynamic.desc != null) {
      richTextNodes = item.modules.moduleDynamic.desc.richTextNodes;
    } else if (item.modules.moduleDynamic.major != null) {
      // 动态页面 richTextNodes 层级可能与主页动态层级不同
      richTextNodes =
          item.modules.moduleDynamic.major.opus?.summary?.richTextNodes;
      if (item.modules.moduleDynamic.major.opus?.title != null) {
        spanChildren.add(
          TextSpan(
            text: item.modules.moduleDynamic.major.opus.title + '\n',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        );
      }
    }
    if (richTextNodes == null || richTextNodes.isEmpty) {
      return null;
    } else {
      for (var i in richTextNodes) {
        if (i.type == 'RICH_TEXT_NODE_TYPE_TEXT') {
          spanChildren.add(
              TextSpan(text: i.origText, style: const TextStyle(height: 1.65)));
        }
        // @用户
        else if (i.type == 'RICH_TEXT_NODE_TYPE_AT') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/member?mid=${i.rid}',
                        arguments: {'face': null}),
                    child: Text(
                      ' ${i.text}',
                      style: authorStyle,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        // 话题
        else if (i.type == 'RICH_TEXT_NODE_TYPE_TOPIC') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  '${i.origText}',
                  style: authorStyle,
                ),
              ),
            ),
          );
        }
        // 网页链接
        else if (i.type == 'RICH_TEXT_NODE_TYPE_WEB') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.link,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {
                  String? url = i.origText;
                  if (url == null) {
                    SmartDialog.showToast('未获取到链接');
                    return;
                  }
                  PiliScheme.routePushFromUrl(url);
                },
                child: Text(
                  i.text ?? '',
                  style: authorStyle,
                ),
              ),
            ),
          );
        }
        // 投票
        else if (i.type == 'RICH_TEXT_NODE_TYPE_VOTE') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {
                  try {
                    String dynamicId = item.basic.commentIdStr;
                    Get.toNamed(
                      '/webview',
                      parameters: {
                        'url':
                            'https://t.bilibili.com/vote/h5/index/#/result?vote_id=${i.rid}&dynamic_id=$dynamicId&isWeb=1',
                        'type': 'vote',
                        'pageTitle': '投票'
                      },
                    );
                  } catch (_) {}
                },
                child: Text(
                  '投票：${i.text}',
                  style: authorStyle,
                ),
              ),
            ),
          );
        }
        // 表情
        else if (i.type == 'RICH_TEXT_NODE_TYPE_EMOJI' && i.emoji != null) {
          spanChildren.add(
            WidgetSpan(
              child: NetworkImgLayer(
                src: i.emoji!.webpUrl ?? i.emoji!.gifUrl ?? i.emoji!.iconUrl,
                type: 'emote',
                width: (i.emoji!.size ?? 1) * 20,
                height: (i.emoji!.size ?? 1) * 20,
              ),
            ),
          );
        }
        // 抽奖
        else if (i.type == 'RICH_TEXT_NODE_TYPE_LOTTERY') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.redeem_rounded,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(
                    '/webview',
                    parameters: {
                      'url':
                          'https://www.bilibili.com/h5/lottery/result?business_id=${item.idStr}'
                    },
                  );
                },
                child: Text(
                  '${i.origText} ',
                  style: authorStyle,
                ),
              ),
            ),
          );
        }

        /// TODO 商品
        else if (i.type == 'RICH_TEXT_NODE_TYPE_GOODS') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  '${i.text} ',
                  style: authorStyle,
                ),
              ),
            ),
          );
        }
        // 投稿
        else if (i.type == 'RICH_TEXT_NODE_TYPE_BV') {
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.play_circle_outline_outlined,
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
          spanChildren.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () async {
                  try {
                    int cid = await SearchHttp.ab2c(bvid: i.rid);
                    PageUtils.toVideoPage(
                      'bvid=${i.rid}&cid=$cid',
                      arguments: {
                        'pic': null,
                        'heroTag': Utils.makeHeroTag(i.rid),
                      },
                    );
                  } catch (err) {
                    SmartDialog.showToast(err.toString());
                  }
                },
                child: Text(
                  '${i.text} ',
                  style: authorStyle,
                ),
              ),
            ),
          );
        } else if (i.type == 'RICH_TEXT_NODE_TYPE_VIEW_PICTURE') {
          if (i.pics?.isNotEmpty == true) {
            spanChildren.add(TextSpan(text: '\n'));
            spanChildren.add(
              WidgetSpan(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return imageView(
                      constraints.maxWidth,
                      i.pics!
                          .map((item) => ImageModel(
                                url: item.src ?? '',
                                width: item.width,
                                height: item.height,
                              ))
                          .toList(),
                    );
                  },
                ),
              ),
            );
          } else {
            spanChildren.add(
              TextSpan(
                text: '${i.text}',
                style: authorStyle,
              ),
            );
          }
        }
      }

      return TextSpan(children: spanChildren);
    }
  } catch (err) {
    debugPrint('❌rich_node_panel err: $err');
    return spacer;
  }
}

class _VerticalSpaceSpan extends WidgetSpan {
  _VerticalSpaceSpan(double height)
      : super(child: SizedBox(height: height, width: double.infinity));
}
