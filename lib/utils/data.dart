import 'package:PiliPlus/http/user.dart';

import 'storage.dart';

class Data {
  static Future init() async {
    await historyStatus();
  }

  static Future historyStatus() async {
    if (GStorage.userInfo.get('userInfoCache') == null) {
      return;
    }
    var res = await UserHttp.historyStatus();
    if (res['status']) {
      GStorage.localCache.put(LocalCacheKey.historyPause, res['data']);
    }
  }
}
