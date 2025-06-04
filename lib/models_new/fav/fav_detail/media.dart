import 'package:PiliPlus/models_new/fav/fav_detail/cnt_info.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/ogv.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/ugc.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/upper.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';

class FavDetailItemModel with MultiSelectData {
  int? id;
  int? type;
  String? title;
  String? cover;
  String? intro;
  int? page;
  int? duration;
  Upper? upper;
  int? attr;
  CntInfo? cntInfo;
  String? link;
  int? ctime;
  int? pubtime;
  int? favTime;
  String? bvId;
  String? bvid;
  Ogv? ogv;
  Ugc? ugc;
  String? mediaListLink;

  FavDetailItemModel({
    this.id,
    this.type,
    this.title,
    this.cover,
    this.intro,
    this.page,
    this.duration,
    this.upper,
    this.attr,
    this.cntInfo,
    this.link,
    this.ctime,
    this.pubtime,
    this.favTime,
    this.bvId,
    this.bvid,
    this.ogv,
    this.ugc,
    this.mediaListLink,
  });

  factory FavDetailItemModel.fromJson(Map<String, dynamic> json) =>
      FavDetailItemModel(
        id: json['id'] as int?,
        type: json['type'] as int?,
        title: json['title'] as String?,
        cover: json['cover'] as String?,
        intro: json['intro'] as String?,
        page: json['page'] as int?,
        duration: json['duration'] as int?,
        upper: json['upper'] == null
            ? null
            : Upper.fromJson(json['upper'] as Map<String, dynamic>),
        attr: json['attr'] as int?,
        cntInfo: json['cnt_info'] == null
            ? null
            : CntInfo.fromJson(json['cnt_info'] as Map<String, dynamic>),
        link: json['link'] as String?,
        ctime: json['ctime'] as int?,
        pubtime: json['pubtime'] as int?,
        favTime: json['fav_time'] as int?,
        bvId: json['bv_id'] as String?,
        bvid: json['bvid'] as String?,
        ogv: json['ogv'] == null ? null : Ogv.fromJson(json['ogv']),
        ugc: json['ugc'] == null
            ? null
            : Ugc.fromJson(json['ugc'] as Map<String, dynamic>),
        mediaListLink: json['media_list_link'] as String?,
      );
}
