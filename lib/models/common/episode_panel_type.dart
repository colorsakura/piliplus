enum EpisodeType { part, season, bangumi }

extension EpisodeTypeExt on EpisodeType {
  String get title => const ['分P', '合集', '番剧'][index];
}
