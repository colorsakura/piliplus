import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/pages/rank/zone/index.dart';

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
    'label': '全站',
    'type': RandType.all,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 0), tag: '0'),
    'page': const ZonePage(rid: 0),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '国创',
    'type': RandType.creation,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 168), tag: '168'),
    'page': const ZonePage(rid: 168),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '动画',
    'type': RandType.animation,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 1), tag: '1'),
    'page': const ZonePage(rid: 1),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '音乐',
    'type': RandType.music,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 3), tag: '3'),
    'page': const ZonePage(rid: 3),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '舞蹈',
    'type': RandType.dance,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 129), tag: '129'),
    'page': const ZonePage(rid: 129),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '游戏',
    'type': RandType.game,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 4), tag: '4'),
    'page': const ZonePage(rid: 4),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '知识',
    'type': RandType.knowledge,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 36), tag: '36'),
    'page': const ZonePage(rid: 36),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '科技',
    'type': RandType.technology,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 188), tag: '188'),
    'page': const ZonePage(rid: 188),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '运动',
    'type': RandType.sport,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 234), tag: '234'),
    'page': const ZonePage(rid: 234),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '汽车',
    'type': RandType.car,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 223), tag: '223'),
    'page': const ZonePage(rid: 223),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '生活',
    'type': RandType.life,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 160), tag: '160'),
    'page': const ZonePage(rid: 160),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '美食',
    'type': RandType.food,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 211), tag: '211'),
    'page': const ZonePage(rid: 211),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '动物',
    'type': RandType.animal,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 217), tag: '217'),
    'page': const ZonePage(rid: 217),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '鬼畜',
    'type': RandType.madness,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 119), tag: '119'),
    'page': const ZonePage(rid: 119),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '时尚',
    'type': RandType.fashion,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 155), tag: '155'),
    'page': const ZonePage(rid: 155),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '娱乐',
    'type': RandType.entertainment,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 5), tag: '5'),
    'page': const ZonePage(rid: 5),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '影视',
    'type': RandType.film,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 181), tag: '181'),
    'page': const ZonePage(rid: 181),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '纪录',
    'type': RandType.documentary,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 177), tag: '177'),
    'page': const ZonePage(rid: 177),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '电影',
    'type': RandType.movie,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 23), tag: '23'),
    'page': const ZonePage(rid: 23),
  },
  {
    'icon': const Icon(
      Icons.live_tv_outlined,
      size: 15,
    ),
    'label': '剧集',
    'type': RandType.teleplay,
    'ctr': Get.put<ZoneController>(ZoneController(zoneID: 11), tag: '11'),
    'page': const ZonePage(rid: 11),
  }
];
