enum WebviewMenuItem {
  refresh,
  copy,
  openInBrowser,
  clearCache,
  resetCookie,
  goBack,
}

extension WebviewMenuItemExt on WebviewMenuItem {
  String get title => const [
        '刷新',
        '复制链接',
        '浏览器中打开',
        '清除缓存',
        '重新设置Cookie',
        '返回',
      ][index];
}
