import 'package:get/get.dart';
import '../../pages/dynamics/tab/controller.dart';
import '../../pages/dynamics/tab/view.dart';

enum DynamicsType {
  all,
  video,
  pgc,
  article,
  up,
}

extension BusinessTypeExtension on DynamicsType {
  String get values => ['all', 'video', 'pgc', 'article', 'up'][index];
  String get labels => ['全部', '投稿', '番剧', '专栏', 'UP'][index];
}

List tabsConfig = [
  {
    'tag': 'all',
    'value': DynamicsType.all,
    'label': '全部',
    'enabled': true,
  },
  {
    'tag': 'video',
    'value': DynamicsType.video,
    'label': '投稿',
    'enabled': true,
  },
  {
    'tag': 'pgc',
    'value': DynamicsType.pgc,
    'label': '番剧',
    'enabled': true,
  },
  {
    'tag': 'article',
    'value': DynamicsType.article,
    'label': '专栏',
    'enabled': true,
  },
  {
    'tag': 'up',
    'value': DynamicsType.up,
    'label': 'UP',
    'enabled': true,
  },
];
