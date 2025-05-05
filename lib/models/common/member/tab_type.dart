enum MemberTabType { none, home, dynamic, contribute, favorite, bangumi }

extension MemberTabTypeExt on MemberTabType {
  String get title => const ['默认', '主页', '动态', '投稿', '收藏', '番剧'][index];
}
