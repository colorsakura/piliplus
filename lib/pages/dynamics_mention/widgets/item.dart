import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/models_new/dynamic/dyn_mention/item.dart';
import 'package:PiliPlus/utils/num_util.dart';
import 'package:flutter/material.dart';

class DynMentionItem extends StatelessWidget {
  const DynMentionItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final MentionItem item;
  final ValueChanged<MentionItem> onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ListTile(
        dense: true,
        onTap: () => onTap(item),
        leading: NetworkImgLayer(
          src: item.face,
          width: 42,
          height: 42,
          type: ImageType.avatar,
        ),
        title: Text(
          item.name!,
          style: const TextStyle(fontSize: 14),
        ),
        subtitle: Text(
          '${NumUtil.numFormat(item.fans)}粉丝',
          style: TextStyle(color: Theme.of(context).colorScheme.outline),
        ),
      ),
    );
  }
}
