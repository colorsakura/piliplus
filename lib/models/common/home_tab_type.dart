import 'package:PiliPlus/pages/bangumi/controller.dart';
import 'package:PiliPlus/pages/bangumi/view.dart';
import 'package:PiliPlus/pages/hot/controller.dart';
import 'package:PiliPlus/pages/hot/view.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/live/view.dart';
import 'package:PiliPlus/pages/rank/controller.dart';
import 'package:PiliPlus/pages/rank/view.dart';
import 'package:PiliPlus/pages/rcmd/controller.dart';
import 'package:PiliPlus/pages/rcmd/view.dart';
import 'package:get/get.dart';

enum HomeTabType {
  live('直播'),
  rcmd('推荐'),
  hot('热门'),
  rank('分区'),
  bangumi('番剧'),
  cinema('影视');

  final String description;
  const HomeTabType(this.description);
}

List get homeTabsConfig => [
      {
        'label': '直播',
        'type': HomeTabType.live,
        'ctr': Get.find<LiveController>,
        'page': const LivePage(),
      },
      {
        'label': '推荐',
        'type': HomeTabType.rcmd,
        'ctr': Get.find<RcmdController>,
        'page': const RcmdPage(),
      },
      {
        'label': '热门',
        'type': HomeTabType.hot,
        'ctr': Get.find<HotController>,
        'page': const HotPage(),
      },
      {
        'label': '分区',
        'type': HomeTabType.rank,
        'ctr': Get.find<RankController>,
        'page': const RankPage(),
      },
      {
        'label': '番剧',
        'type': HomeTabType.bangumi,
        'ctr': Get.find<BangumiController>,
        'page': const BangumiPage(tabType: HomeTabType.bangumi),
      },
      {
        'label': '影视',
        'type': HomeTabType.cinema,
        'ctr': Get.find<BangumiController>,
        'page': const BangumiPage(tabType: HomeTabType.cinema),
      },
    ];
