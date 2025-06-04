import 'package:PiliPlus/models_new/sub/sub_detail/cnt_info.dart';
import 'package:PiliPlus/models_new/sub/sub_detail/upper.dart';

class Info {
  int? id;
  int? seasonType;
  String? title;
  String? cover;
  Upper? upper;
  CntInfo? cntInfo;
  int? mediaCount;
  String? intro;
  int? enableVt;

  Info({
    this.id,
    this.seasonType,
    this.title,
    this.cover,
    this.upper,
    this.cntInfo,
    this.mediaCount,
    this.intro,
    this.enableVt,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        id: json['id'] as int?,
        seasonType: json['season_type'] as int?,
        title: json['title'] as String?,
        cover: json['cover'] as String?,
        upper: json['upper'] == null
            ? null
            : Upper.fromJson(json['upper'] as Map<String, dynamic>),
        cntInfo: json['cnt_info'] == null
            ? null
            : CntInfo.fromJson(json['cnt_info'] as Map<String, dynamic>),
        mediaCount: json['media_count'] as int?,
        intro: json['intro'] as String?,
        enableVt: json['enable_vt'] as int?,
      );
}
