import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

class FavNoteItem extends StatelessWidget {
  const FavNoteItem({super.key, required this.item});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.handleWebview(item['web_url'], inApp: true);
      },
      onLongPress: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: StyleString.safeSpace,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      item['title'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        height: 1.4,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    item['summary'],
                    maxLines: 1,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    item['message'],
                    maxLines: 1,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),
            if (item['arc']?['pic'] != null) ...[
              const SizedBox(width: 10),
              AspectRatio(
                aspectRatio: StyleString.aspectRatio,
                child: LayoutBuilder(
                  builder:
                      (BuildContext context, BoxConstraints boxConstraints) {
                    return NetworkImgLayer(
                      src: item['arc']?['pic'],
                      width: boxConstraints.maxWidth,
                      height: boxConstraints.maxHeight,
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
