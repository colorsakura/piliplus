import 'package:flutter/material.dart';

enum RandType {
  all,
  creation,
  animation,
  music,
  dance,
  game,
  knowledge,
  technology,
  sport,
  car,
  life,
  food,
  animal,
  madness,
  fashion,
  entertainment,
  film,
  documentary,
  movie,
  teleplay
}

extension RankTypeDesc on RandType {
  String get description => [
        '全站',
        '国创',
        '动画',
        '音乐',
        '舞蹈',
        '游戏',
        '知识',
        '科技',
        '运动',
        '汽车',
        '生活',
        '美食',
        '动物',
        '鬼畜',
        '时尚',
        '娱乐',
        '影视',
        '纪录',
        '电影',
        '剧集'
      ][index];

  String get id => [
        'all',
        'creation',
        'animation',
        'music',
        'dance',
        'game',
        'knowledge',
        'technology',
        'sport',
        'car',
        'life',
        'food',
        'animal',
        'madness',
        'fashion',
        'entertainment',
        'film',
        'documentary',
        'movie',
        'teleplay'
      ][index];
}

List tabsConfig = [
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 0,
    'label': '全站',
    'type': RandType.all,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 168,
    'label': '国创',
    'type': RandType.creation,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 1,
    'label': '动画',
    'type': RandType.animation,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 3,
    'label': '音乐',
    'type': RandType.music,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 129,
    'label': '舞蹈',
    'type': RandType.dance,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 4,
    'label': '游戏',
    'type': RandType.game,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 36,
    'label': '知识',
    'type': RandType.knowledge,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 188,
    'label': '科技',
    'type': RandType.technology,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 234,
    'label': '运动',
    'type': RandType.sport,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 223,
    'label': '汽车',
    'type': RandType.car,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 160,
    'label': '生活',
    'type': RandType.life,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 211,
    'label': '美食',
    'type': RandType.food,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 217,
    'label': '动物',
    'type': RandType.animal,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 119,
    'label': '鬼畜',
    'type': RandType.madness,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 155,
    'label': '时尚',
    'type': RandType.fashion,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 5,
    'label': '娱乐',
    'type': RandType.entertainment,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 181,
    'label': '影视',
    'type': RandType.film,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 177,
    'label': '纪录',
    'type': RandType.documentary,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 23,
    'label': '电影',
    'type': RandType.movie,
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'rid': 11,
    'label': '剧集',
    'type': RandType.teleplay,
  }
];
