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

const List tabsConfig = [
  {
    'tag': 'all',
    'value': DynamicsTabType.all,
    'label': '全部',
    'enabled': true,
  },
  {
    'tag': 'video',
    'value': DynamicsTabType.video,
    'label': '投稿',
    'enabled': true,
  },
  {
    'tag': 'pgc',
    'value': DynamicsTabType.pgc,
    'label': '番剧',
    'enabled': true,
  },
  {
    'tag': 'article',
    'value': DynamicsTabType.article,
    'label': '专栏',
    'enabled': true,
  },
  {
    'tag': 'up',
    'value': DynamicsTabType.up,
    'label': 'UP',
    'enabled': true,
  },
];
