import 'package:json_annotation/json_annotation.dart';

import 'list.dart';

part 'media_list_response.g.dart';

@JsonSerializable()
class MediaListResponse {
  int? count;
  List<FavList>? list;
  @JsonKey(name: 'has_more')
  bool? hasMore;

  MediaListResponse({this.count, this.list, this.hasMore});

  factory MediaListResponse.fromJson(Map<String, dynamic> json) {
    return _$MediaListResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MediaListResponseToJson(this);
}
