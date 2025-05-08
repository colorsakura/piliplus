import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/stat/stat.dart';
import 'package:PiliPlus/models/space_opus/item.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:flutter/material.dart';

class SpaceOpusItem extends StatelessWidget {
  const SpaceOpusItem({
    super.key,
    required this.item,
  });

  final SpaceOpusItemModel item;

  @override
  Widget build(BuildContext context) {
    final hasPic = item.cover?.url?.isNotEmpty == true;
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: InkWell(
        onTap: () {
          PageUtils.pushDynFromId(id: item.opusId!);
        },
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasPic)
              Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return NetworkImgLayer(
                        width: constraints.maxWidth,
                        height: constraints.maxWidth * item.cover!.ratio,
                        src: item.cover!.url,
                        type: 'emote',
                        quality: 60,
                      );
                    },
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 45,
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(left: 8, bottom: 4),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black54],
                        ),
                      ),
                      child: StatView(
                        context: context,
                        value: item.stat?.like ?? 0,
                        goto: 'like',
                      ),
                    ),
                  ),
                ],
              ),
            if (item.content?.isNotEmpty == true)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Text(
                  item.content!,
                  maxLines: hasPic ? 4 : 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            if (!hasPic)
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
                child: StatView(
                  context: context,
                  value: item.stat?.like ?? 0,
                  goto: 'like',
                  textColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
