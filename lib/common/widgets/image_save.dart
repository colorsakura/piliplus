import 'dart:math';

import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/utils/download.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

void imageSaveDialog({
  required BuildContext context,
  required String? title,
  required String? cover,
}) {
  final double imgWidth = min(Get.width, Get.height) - 8 * 2;
  SmartDialog.show(
    animationType: SmartAnimationType.centerScale_otherSlide,
    builder: (context) => Container(
      width: imgWidth,
      margin: const EdgeInsets.symmetric(horizontal: StyleString.safeSpace),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: SmartDialog.dismiss,
                child: NetworkImgLayer(
                  width: imgWidth,
                  height: imgWidth / StyleString.aspectRatio,
                  src: cover,
                  quality: 100,
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: SmartDialog.dismiss,
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
                    title ?? '',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(width: 4),
                IconButton(
                  tooltip: '保存封面图',
                  onPressed: () async {
                    bool saveStatus = await DownloadUtils.downloadImg(
                      context,
                      [cover ?? ''],
                    );
                    // 保存成功，自动关闭弹窗
                    if (saveStatus) {
                      SmartDialog.dismiss();
                    }
                  },
                  icon: const Icon(Icons.download, size: 20),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
