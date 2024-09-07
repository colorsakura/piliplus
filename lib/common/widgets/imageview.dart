import 'dart:math';

import 'package:PiliPalaX/common/widgets/badge.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/common/widgets/nine_grid_view.dart';
import 'package:PiliPalaX/pages/preview/view.dart';
import 'package:flutter/material.dart';

Widget image(
  double maxWidth,
  List<dynamic> picArr,
) {
  double imageWidth = (maxWidth - 2 * 5) / 3;
  double imageHeight = imageWidth;
  if (picArr.length == 1) {
    dynamic width = picArr[0]['img_width'];
    dynamic height = picArr[0]['img_height'];
    double ratioWH = width / height;
    double ratioHW = height / width;
    double maxRatio = 22 / 9;
    imageWidth = ratioWH > 1.5
        ? maxWidth
        : (ratioWH >= 1 || (height > width && ratioHW < 1.5))
            ? 2 * imageWidth
            : imageWidth;
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
              imgList: picArr.map((item) => item['img_src'] as String).toList(),
            );
          },
        );
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: NetworkImgLayer(
              src: picArr[index]['img_src'],
              width: imageWidth,
              height: imageHeight,
              origAspectRatio:
                  picArr[index]['img_width'] / picArr[index]['img_height'],
            ),
          ),
          if (picArr[index]['img_height'] / picArr[index]['img_width'] > 22 / 9)
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
