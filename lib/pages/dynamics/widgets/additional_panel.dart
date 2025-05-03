import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/http/search.dart';

/// TODO 点击跳转
Widget addWidget(
    ThemeData theme, DynamicItemModel item, BuildContext context, type,
    {floor = 1}) {
  Map<dynamic, dynamic> dynamicProperty = {
    'ADDITIONAL_TYPE_UGC': item.modules.moduleDynamic!.additional!.ugc,
    // 直播预约
    'ADDITIONAL_TYPE_RESERVE': item.modules.moduleDynamic!.additional!.reserve,
    // 商品
    'ADDITIONAL_TYPE_GOODS': item.modules.moduleDynamic!.additional!.goods,
    // 比赛信息
    'ADDITIONAL_TYPE_MATCH': item.modules.moduleDynamic!.additional!.match,
    // 游戏信息
    'ADDITIONAL_TYPE_COMMON': item.modules.moduleDynamic!.additional!.common,
  };
  dynamic content = dynamicProperty[type];
  Color bgColor = floor == 1
      ? theme.dividerColor.withOpacity(0.08)
      : theme.colorScheme.surface;
  switch (type) {
    case 'ADDITIONAL_TYPE_UGC':
      // 转发的投稿
      return InkWell(
        onTap: () async {
          String text = content.jumpUrl;
          RegExp bvRegex = RegExp(r'BV[0-9A-Za-z]{10}', caseSensitive: false);
          Iterable<Match> matches = bvRegex.allMatches(text);
          if (matches.isNotEmpty) {
            Match match = matches.first;
            String bvid = match.group(0)!;
            String cover = content.cover;
            try {
              int cid = await SearchHttp.ab2c(bvid: bvid);
              PageUtils.toVideoPage(
                'bvid=$bvid&cid=$cid',
                arguments: {
                  'pic': cover,
                  'heroTag': Utils.makeHeroTag(bvid),
                },
              );
            } catch (err) {
              SmartDialog.showToast(err.toString());
            }
          } else {
            debugPrint("No match found.");
          }
        },
        child: Container(
          padding:
              const EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
          color: bgColor,
          child: Row(
            children: [
              NetworkImgLayer(
                width: 120,
                height: 75,
                src: content.cover,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      content.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      content.descSecond,
                      style: TextStyle(
                        color: theme.colorScheme.outline,
                        fontSize: theme.textTheme.labelMedium!.fontSize,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    case 'ADDITIONAL_TYPE_RESERVE':
      return content.state != -1
          ? content.title != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      color: bgColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            content.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 1),
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: theme.colorScheme.outline,
                                fontSize: theme.textTheme.labelMedium!.fontSize,
                              ),
                              children: [
                                if (content.desc1 != null)
                                  TextSpan(text: content.desc1['text']),
                                const TextSpan(text: '  '),
                                if (content.desc2 != null)
                                  TextSpan(text: content.desc2['text']),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink()
          : const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_GOODS':
      // 商品
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_MATCH':
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_COMMON':
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_VOTE':
      return const SizedBox.shrink();
    default:
      return const SizedBox.shrink();
  }
}
