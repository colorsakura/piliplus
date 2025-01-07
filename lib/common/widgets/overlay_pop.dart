import 'dart:math';

import 'package:PiliPlus/grpc/app/card/v1/card.pb.dart' as card;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/download.dart';
import '../constants.dart';
import 'network_img_layer.dart';

class OverlayPop extends StatelessWidget {
  const OverlayPop({super.key, this.videoItem, this.closeFn});

  final dynamic videoItem;
  final Function? closeFn;

  @override
  Widget build(BuildContext context) {
    final double imgWidth = min(Get.height, Get.width) - 8 * 2;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: imgWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              NetworkImgLayer(
                width: imgWidth,
                height: imgWidth / StyleString.aspectRatio,
                src: videoItem is card.Card
                    ? (videoItem as card.Card).smallCoverV5.base.cover
                    : videoItem.pic,
                quality: 100,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: IconButton(
                    tooltip: '关闭',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () => closeFn?.call(),
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 8, 10),
              child: Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      videoItem is card.Card
                          ? (videoItem as card.Card).smallCoverV5.base.title
                          : videoItem.title,
                    ),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    tooltip: '保存封面图',
                    onPressed: () async {
                      await DownloadUtils.downloadImg(
                        context,
                        [
                          videoItem is card.Card
                              ? (videoItem as card.Card).smallCoverV5.base.cover
                              : videoItem.pic ?? videoItem.cover
                        ],
                      );
                      closeFn?.call();
                    },
                    icon: const Icon(Icons.download, size: 20),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
