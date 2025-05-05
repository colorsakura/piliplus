enum AccountType {
  main,
  heartbeat,
  recommend,
  video,
}

extension AccountTypeExt on AccountType {
  String get title => const ['主账号', '记录观看', '推荐', '视频取流'][index];
}
