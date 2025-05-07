enum DynamicsTabType {
  all,
  video,
  pgc,
  article,
  up,
}

extension DynamicsTabTypeExt on DynamicsTabType {
  String get values => const ['all', 'video', 'pgc', 'article', 'up'][index];
  String get labels => const ['全部', '投稿', '番剧', '专栏', 'UP'][index];
}
