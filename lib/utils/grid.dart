import 'package:flutter/cupertino.dart';
import 'storage.dart';
class Grid {
  static double maxRowWidth = GStrorage.setting.get(SettingBoxKey.maxRowWidth, defaultValue: 240.0) as double;

  static double calculateActualWidth(BuildContext context, double maxCrossAxisExtent, double crossAxisSpacing, {double? screenWidthOffset}) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidthOffset != null) {
      screenWidth -= screenWidthOffset;
    }
    int columnCount = ((screenWidth - crossAxisSpacing) / (maxCrossAxisExtent + crossAxisSpacing)).ceil();
    if (columnCount < 1){
      columnCount = 1;
    }
    double columnWidth = (screenWidth - crossAxisSpacing) ~/ columnCount - crossAxisSpacing;
    return columnWidth;
  }
}
