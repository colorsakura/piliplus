import 'package:PiliPlus/models_new/fav/fav_video/list.dart';

class FavVideoData {
  int? count;
  List<FavVideoItemModel>? list;
  bool? hasMore;

  FavVideoData({this.count, this.list, this.hasMore});

  factory FavVideoData.fromJson(Map<String, dynamic> json) => FavVideoData(
        count: json['count'] as int?,
        list: (json['list'] as List<dynamic>?)
            ?.map((e) => FavVideoItemModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        hasMore: json['has_more'] as bool?,
      );
}
