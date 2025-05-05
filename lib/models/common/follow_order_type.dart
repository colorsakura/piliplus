enum FollowOrderType { def, attention }

extension FollowOrderTypeExt on FollowOrderType {
  String get type => const ['', 'attention'][index];
  String get title => const ['最近关注', '最常访问'][index];
}
