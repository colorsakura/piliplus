enum BusinessType {
  // 普通视频
  archive,
  // 剧集（番剧 / 影视）
  pgc,
  // 直播
  live,
  // 文章
  articleList,
  // 文章
  article,
  hiddenDurationType,
  showBadge
}

extension BusinessTypeExtension on BusinessType {
  String get type =>
      const ['archive', 'pgc', 'live', 'article-list', 'article'][index];
  // 隐藏时长
  List get hiddenDurationType => const ['live', 'article-list', 'article'];
  // 右上
  List get showBadge => const ['pgc', 'article-list', 'article'];
}
