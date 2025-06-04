import 'package:PiliPlus/models_new/sub/sub_detail/cnt_info.dart';
import 'package:PiliPlus/models_new/sub/sub_detail/upper.dart';

class SubDetailItemModel {
  int? id;
  String? title;
  String? cover;
  int? duration;
  int? pubtime;
  String? bvid;
  Upper? upper;
  CntInfo? cntInfo;
  int? enableVt;
  String? vtDisplay;
  bool? isSelfView;

  SubDetailItemModel({
    this.id,
    this.title,
    this.cover,
    this.duration,
    this.pubtime,
    this.bvid,
    this.upper,
    this.cntInfo,
    this.enableVt,
    this.vtDisplay,
    this.isSelfView,
  });

  factory SubDetailItemModel.fromJson(Map<String, dynamic> json) =>
      SubDetailItemModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        cover: json['cover'] as String?,
        duration: json['duration'] as int?,
        pubtime: json['pubtime'] as int?,
        bvid: json['bvid'] as String?,
        upper: json['upper'] == null
            ? null
            : Upper.fromJson(json['upper'] as Map<String, dynamic>),
        cntInfo: json['cnt_info'] == null
            ? null
            : CntInfo.fromJson(json['cnt_info'] as Map<String, dynamic>),
        enableVt: json['enable_vt'] as int?,
        vtDisplay: json['vt_display'] as String?,
        isSelfView: json['is_self_view'] as bool?,
      );
}
