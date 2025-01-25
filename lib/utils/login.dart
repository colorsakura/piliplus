import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/dynamics_type.dart';
import 'package:PiliPlus/models/user/info.dart';
import 'package:PiliPlus/models/user/stat.dart';
import 'package:PiliPlus/pages/dynamics/tab/controller.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/dynamics/index.dart';
import 'package:PiliPlus/pages/home/index.dart';
import 'package:PiliPlus/pages/media/index.dart';
import 'package:PiliPlus/pages/mine/index.dart';
import 'package:uuid/uuid.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as web;
import 'package:PiliPlus/pages/dynamics/controller.dart';
import 'package:PiliPlus/pages/home/controller.dart';
import 'package:PiliPlus/pages/media/controller.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/http/user.dart';

class LoginUtils {
  static Future onLogin(Map<String, dynamic> token_info, cookie_info) async {
    try {
      GStorage.localCache.put(LocalCacheKey.accessKey, {
        'mid': token_info['mid'],
        'value': token_info['access_token'] ?? token_info['value'],
        'refresh': token_info['refresh_token'] ?? token_info['refresh']
      });
      List<dynamic> cookieInfo = cookie_info['cookies'];
      List<Cookie> cookies = [];
      String cookieStrings = cookieInfo.map((cookie) {
        String cstr =
            '${cookie['name']}=${cookie['value']};Domain=.bilibili.com;Path=/;';
        cookies.add(Cookie.fromSetCookieValue(cstr));
        return cstr;
      }).join('');
      List<String> urls = [
        HttpString.baseUrl,
        HttpString.apiBaseUrl,
        HttpString.tUrl
      ];
      for (var url in urls) {
        await Request.cookieManager.cookieJar
            .saveFromResponse(Uri.parse(url), cookies);
      }
      Request.dio.options.headers['cookie'] = cookieStrings;
      await WebviewCookieManager().setCookies(cookies);
      for (Cookie item in cookies) {
        await web.CookieManager().setCookie(
          url: web.WebUri(item.domain ?? ''),
          name: item.name,
          value: item.value,
          path: item.path ?? '',
          domain: item.domain,
          isSecure: item.secure,
          isHttpOnly: item.httpOnly,
        );
      }
    } catch (e) {
      SmartDialog.showToast('设置登录态失败，$e');
    }
    final result = await UserHttp.userInfo();
    if (result['status'] && result['data'].isLogin) {
      SmartDialog.showToast('登录成功，当前采用「'
          '${GStorage.setting.get(SettingBoxKey.defaultRcmdType, defaultValue: 'app')}'
          '端」推荐');
      await GStorage.userInfo.put('userInfoCache', result['data']);
      try {
        Get.find<MineController>()
          ..isLogin.value = true
          ..queryUserInfo();
      } catch (_) {}

      try {
        Get.find<HomeController>()
          ..isLogin.value = true
          ..userFace.value = result['data'].face;
      } catch (_) {}

      try {
        Get.find<DynamicsController>()
          ..isLogin.value = true
          ..ownerMid = result['data'].mid
          ..face = result['data'].face
          ..onRefresh();
      } catch (_) {}

      for (int i = 0; i < tabsConfig.length; i++) {
        try {
          Get.find<DynamicsTabController>(tag: tabsConfig[i]['tag'])
              .onRefresh();
        } catch (_) {}
      }

      try {
        Get.find<MediaController>()
          ..mid = result['data'].mid
          ..onRefresh();
      } catch (_) {}

      try {
        Get.find<LiveController>()
          ..isLogin.value = true
          ..fetchLiveFollowing();
      } catch (_) {}
    } else {
      // 获取用户信息失败
      SmartDialog.showNotify(
          msg: '登录失败，请检查cookie是否正确，${result['message']}',
          notifyType: NotifyType.warning);
    }
  }

  static Future onLogout() async {
    await Request.cookieManager.cookieJar.deleteAll();
    await web.CookieManager().deleteAllCookies();
    Request.dio.options.headers['cookie'] = '';

    await GStorage.userInfo.delete('userInfoCache');
    await GStorage.localCache.delete(LocalCacheKey.accessKey);

    try {
      Get.find<MainController>().isLogin.value = false;
    } catch (_) {}

    try {
      Get.find<MineController>()
        ..userInfo.value = UserInfoData()
        ..userStat.value = UserStat()
        ..isLogin.value = false;
      MineController.anonymity.value = false;
    } catch (_) {}

    try {
      Get.find<HomeController>()
        ..isLogin.value = false
        ..userFace.value = '';
    } catch (_) {}

    try {
      Get.find<DynamicsController>()
        ..isLogin.value = false
        ..onRefresh();
    } catch (_) {}

    try {
      Get.find<MediaController>()
        ..mid = null
        ..loadingState.value = LoadingState.loading();
    } catch (_) {}

    try {
      Get.find<LiveController>()
        ..isLogin.value = false
        ..loadingState.value = LoadingState.loading();
    } catch (_) {}

    for (int i = 0; i < tabsConfig.length; i++) {
      try {
        Get.find<DynamicsTabController>(tag: tabsConfig[i]['tag']).onRefresh();
      } catch (_) {}
    }
  }

  static String buvid() {
    var mac = <String>[];
    var random = Random();

    for (var i = 0; i < 6; i++) {
      var min = 0;
      var max = 0xff;
      var num = (random.nextInt(max - min + 1) + min).toRadixString(16);
      mac.add(num);
    }

    var md5Str = md5.convert(utf8.encode(mac.join(':'))).toString();
    var md5Arr = md5Str.split('');
    return 'XY${md5Arr[2]}${md5Arr[12]}${md5Arr[22]}$md5Str';
  }

  static String getUUID() {
    return const Uuid().v4().replaceAll('-', '');
  }

  static String generateBuvid() {
    String uuid = getUUID() + getUUID();
    return 'XY${uuid.substring(0, 35).toUpperCase()}';
  }

  static String genDeviceId() {
    // https://github.com/bilive/bilive_client/blob/2873de0532c54832f5464a4c57325ad9af8b8698/bilive/lib/app_client.ts#L62
    final String yyyyMMddHHmmss = DateTime.now()
        .toIso8601String()
        .replaceAll(RegExp(r'[-:TZ]'), '')
        .substring(0, 14);

    final Random random = Random(); // Random.secure();
    final String randomHex32 =
        List.generate(32, (index) => random.nextInt(16).toRadixString(16))
            .join();
    final String randomHex16 =
        List.generate(16, (index) => random.nextInt(16).toRadixString(16))
            .join();

    final String deviceID = randomHex32 + yyyyMMddHHmmss + randomHex16;

    final List<int> bytes = RegExp(r'\w{2}')
        .allMatches(deviceID)
        .map((match) => int.parse(match.group(0)!, radix: 16))
        .toList();
    final int checksumValue = bytes.reduce((a, b) => a + b);
    final String check = checksumValue
        .toRadixString(16)
        .substring(checksumValue.toRadixString(16).length - 2);

    return deviceID + check;
  }

  static String generateRandomString(int length) {
    const chars =
        '123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    final Random random = Random(); // Random.secure();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)])
        .join();
  }
}
