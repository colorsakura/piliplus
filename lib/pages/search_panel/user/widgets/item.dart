import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchUserItem extends StatelessWidget {
  const SearchUserItem({
    super.key,
    required this.style,
    required this.item,
  });

  final TextStyle style;
  final SearchUserItemModel item;

  @override
  Widget build(BuildContext context) {
    String heroTag = Utils.makeHeroTag(item.mid);
    return InkWell(
      onTap: () => Get.toNamed(
        '/member?mid=${item.mid}',
        arguments: {'heroTag': heroTag, 'face': item.upic},
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Stack(
            clipBehavior: Clip.none,
            children: [
              NetworkImgLayer(
                width: 42,
                height: 42,
                src: item.upic,
                type: 'avatar',
              ),
              if (item.officialVerify?['type'] == 0 ||
                  item.officialVerify?['type'] == 1)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Icon(
                      Icons.offline_bolt,
                      color: item.officialVerify?['type'] == 0
                          ? Colors.yellow
                          : Colors.lightBlueAccent,
                      size: 14,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    item.uname!,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/lv/lv${item.isSeniorMember == 1 ? '6_s' : item.level}.png',
                    height: 11,
                    semanticLabel: '等级${item.level}',
                  ),
                ],
              ),
              Text(
                '粉丝：${Utils.numFormat(item.fans)}  视频：${Utils.numFormat(item.videos)}',
                style: style,
              ),
              if (item.officialVerify?['desc'] != null &&
                  item.officialVerify?['desc'] != '')
                Text(
                  item.officialVerify?['desc'],
                  style: style,
                ),
            ],
          )
        ],
      ),
    );
  }
}
