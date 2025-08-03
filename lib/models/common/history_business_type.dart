enum HistoryBusinessType {
  // 普通视频
  archive('archive'),
  // 剧集（番剧 / 影视）
  pgc('pgc'),
  // 直播
  live('live'),
  // 文章
  articleList('article-list'),
  // 文章
  article('article');

  final String type;
  const HistoryBusinessType(this.type);
}
