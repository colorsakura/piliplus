import 'dart:math';

import 'package:PiliPalaX/common/widgets/badge.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/common/widgets/nine_grid_view.dart';
import 'package:PiliPalaX/pages/preview/view.dart';
import 'package:flutter/material.dart';

class ImageModel {
  ImageModel({
    required this.width,
    required this.height,
    required this.url,
  });

  dynamic width;
  dynamic height;
  String url;
  bool? _isLongPic;

  dynamic get safeWidth => width ?? 1;
  dynamic get safeHeight => height ?? 1;
  bool get isLongPic => _isLongPic ??= (safeHeight / safeWidth) > (22 / 9);
}

Widget image(
  double maxWidth,
  List<ImageModel> picArr,
) {
  double imageWidth = (maxWidth - 2 * 5) / 3;
  double imageHeight = imageWidth;
  if (picArr.length == 1) {
    dynamic width = picArr[0].safeWidth;
    dynamic height = picArr[0].safeHeight;
    double ratioWH = width / height;
    double ratioHW = height / width;
    double maxRatio = 22 / 9;
    imageWidth = ratioWH > 1.5
        ? maxWidth
        : (ratioWH >= 1 || (height > width && ratioHW < 1.5))
            ? 2 * imageWidth
            : 1.5 * imageWidth;
    imageHeight = imageWidth * min(ratioHW, maxRatio);
  } else if (picArr.length == 2) {
    imageWidth = imageHeight = 2 * imageWidth;
  }
  return NineGridView(
    type: NineGridType.weiBo,
    margin: const EdgeInsets.only(top: 6),
    bigImageWidth: imageWidth,
    bigImageHeight: imageHeight,
    space: 5,
    height: picArr.length == 1 ? imageHeight : null,
    width: picArr.length == 1 ? imageWidth : maxWidth,
    itemCount: picArr.length,
    itemBuilder: (context, index) => GestureDetector(
      onTap: () {
        showDialog(
          useSafeArea: false,
          context: context,
          builder: (context) {
            return ImagePreview(
              initialPage: index,
              imgList: picArr.map((item) => item.url).toList(),
            );
          },
        );
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: NetworkImgLayer(
              isLongPic: picArr[index].isLongPic,
              src: picArr[index].url,
              width: imageWidth,
              height: imageHeight,
              origAspectRatio:
                  picArr[index].safeWidth / picArr[index].safeHeight,
            ),
          ),
          if (picArr[index].isLongPic)
            const PBadge(
              text: '长图',
              right: 8,
              bottom: 8,
            ),
        ],
      ),
    ),
  );
}
