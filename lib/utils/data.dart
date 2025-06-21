import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';

class Data {
  static Future<void> init() async {
    if (!Accounts.main.isLogin) {
      return;
    }
    var res = await UserHttp.historyStatus();
    if (res['status']) {
      GStorage.localCache.put(LocalCacheKey.historyPause, res['data']);
    }
  }
}
