import 'package:PiliPlus/models/space/filter.dart';

class SpaceTabItem {
  final String? title;
  final String? param;
  final int? seriesId;
  final int? seasonId;
  final List<SpaceTabFilter>? filter;

  const SpaceTabItem({
    this.title,
    this.param,
    this.seriesId,
    this.seasonId,
    this.filter,
  });

  factory SpaceTabItem.fromJson(Map<String, dynamic> json) => SpaceTabItem(
        title: json['title'] as String?,
        param: json['param'] as String?,
        seriesId: (json['series_id'] as num?)?.toInt(),
        seasonId: (json['season_id'] as num?)?.toInt(),
        filter: (json['filter'] as List?)
            ?.map((e) => SpaceTabFilter.fromJson(e))
            .toList(),
      );
}
