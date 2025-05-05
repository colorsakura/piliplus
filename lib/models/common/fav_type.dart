import 'package:PiliPlus/pages/fav/article/view.dart';
import 'package:PiliPlus/pages/fav/note/view.dart';
import 'package:PiliPlus/pages/fav/pgc/view.dart';
import 'package:PiliPlus/pages/fav/video/view.dart';
import 'package:flutter/material.dart';

enum FavTabType { video, bangumi, cinema, article, note }

extension FavTabTypeExt on FavTabType {
  String get title => const ['视频', '追番', '追剧', '专栏', '笔记'][index];

  Widget get page => switch (this) {
        FavTabType.video => const FavVideoPage(),
        FavTabType.bangumi => const FavPgcPage(type: 1),
        FavTabType.cinema => const FavPgcPage(type: 2),
        FavTabType.article => const FavArticlePage(),
        FavTabType.note => const FavNotePage(),
      };
}
