class GlobalData {
  int imgQuality = 10;

  int replyLengthLimit = 6;

  num? coins;

  void afterCoin(int coin) {
    if (coins != null) {
      coins = coins! - coin;
    }
  }

  // 私有构造函数
  GlobalData._();

  // 单例实例
  static final GlobalData _instance = GlobalData._();

  // 获取全局实例
  factory GlobalData() => _instance;
}
