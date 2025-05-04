enum ReplySortType { time, like }

extension ReplySortTypeExtension on ReplySortType {
  String get title => const ['最新评论', '最热评论'][index];
  String get label => const ['最新', '最热'][index];
}
