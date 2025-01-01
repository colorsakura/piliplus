import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/models/common/theme_type.dart';
import 'package:PiliPalaX/models/user/info.dart';
import 'package:PiliPalaX/models/user/stat.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:hive/hive.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MineController extends GetxController {
  // 用户信息 头像、昵称、lv
  Rx<UserInfoData> userInfo = UserInfoData().obs;
  // 用户状态 动态、关注、粉丝
  Rx<UserStat> userStat = UserStat().obs;
  RxBool userLogin = false.obs;
  Rx<ThemeType> themeType = ThemeType.system.obs;

  static Box get setting => GStorage.setting;

  static RxBool anonymity =
      (setting.get(SettingBoxKey.anonymity, defaultValue: false) as bool).obs;

  ThemeType get nextThemeType =>
      ThemeType.values[(themeType.value.index + 1) % ThemeType.values.length];

  @override
  onInit() {
    super.onInit();

    dynamic userInfoCache = GStorage.userInfo.get('userInfoCache');
    if (userInfoCache != null) {
      userInfo.value = userInfoCache;
      userLogin.value = true;
    }

    // themeType.value = ThemeType.values[GlobalData().themeMode];
    // anonymity = setting.get(SettingBoxKey.anonymity, defaultValue: false);
  }

  onLogin() async {
    if (!userLogin.value) {
      // Get.toNamed(
      //   '/webviewnew',
      //   parameters: {
      //     'url': 'https://passport.bilibili.com/h5-app/passport/login',
      //     'type': 'login',
      //     'pageTitle': '登录bilibili',
      //   },
      // );
      Get.toNamed('/loginPage', preventDuplicates: false);
    } else {
      int mid = userInfo.value.mid!;
      String face = userInfo.value.face!;
      Get.toNamed('/member?mid=$mid',
          arguments: {'face': face}, preventDuplicates: false);
    }
  }

  Future queryUserInfo() async {
    if (!userLogin.value) {
      return {'status': false};
    }
    var res = await UserHttp.userInfo();
    if (res['status']) {
      if (res['data'].isLogin) {
        userInfo.value = res['data'];
        GStorage.userInfo.put('userInfoCache', res['data']);
        userLogin.value = true;
      } else {
        resetUserInfo();
      }
    } else {
      // resetUserInfo();
      SmartDialog.showToast(res['msg']);
    }
    await queryUserStatOwner();
    return res;
  }

  Future queryUserStatOwner() async {
    var res = await UserHttp.userStatOwner();
    if (res['status']) {
      userStat.value = res['data'];
    }
    return res;
  }

  Future resetUserInfo() async {
    userInfo.value = UserInfoData();
    userStat.value = UserStat();
    GStorage.userInfo.delete('userInfoCache');
    userLogin.value = false;
    anonymity.value = false;
  }

  static onChangeAnonymity(BuildContext context) {
    anonymity.value = !anonymity.value;
    if (anonymity.value) {
      SmartDialog.show(
        clickMaskDismiss: false,
        usePenetrate: true,
        displayTime: const Duration(seconds: 2),
        alignment: Alignment.bottomCenter,
        builder: (context) {
          return ColoredBox(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: MediaQuery.paddingOf(context).bottom + 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        MdiIcons.incognito,
                      ),
                      const SizedBox(width: 10),
                      Text('已进入无痕模式',
                          style: Theme.of(context).textTheme.titleMedium)
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                      '搜索、观看视频/直播不携带身份信息（包含大会员）\n'
                      '不产生查询或播放记录\n'
                      '点赞等其它操作不受影响\n'
                      '（前往隐私设置了解详情）',
                      style: Theme.of(context).textTheme.bodySmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            SmartDialog.dismiss();
                            setting.put(SettingBoxKey.anonymity, true);
                            anonymity.value = true;
                            SmartDialog.showToast('已设为永久无痕模式');
                          },
                          child: Text(
                            '保存为永久',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          SmartDialog.dismiss();
                          setting.put(SettingBoxKey.anonymity, false);
                          anonymity.value = true;
                          SmartDialog.showToast('已设为临时无痕模式');
                        },
                        child: Text(
                          '仅本次（默认）',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // duration: const Duration(seconds: 2),
            // showCloseIcon: true,
          );
        },
      );
    } else {
      setting.put(SettingBoxKey.anonymity, false);
      SmartDialog.show(
        clickMaskDismiss: false,
        usePenetrate: true,
        displayTime: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
        builder: (context) {
          return ColoredBox(
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: MediaQuery.paddingOf(context).bottom + 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    MdiIcons.incognitoOff,
                  ),
                  const SizedBox(width: 10),
                  Text('已退出无痕模式',
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  onChangeTheme() {
    themeType.value = nextThemeType;
    setting.put(SettingBoxKey.themeMode, themeType.value.code);
    Get.forceAppUpdate();
  }

  pushFollow() {
    if (!userLogin.value) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    Get.toNamed('/follow?mid=${userInfo.value.mid}', preventDuplicates: false);
  }

  pushFans() {
    if (!userLogin.value) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    Get.toNamed('/fan?mid=${userInfo.value.mid}', preventDuplicates: false);
  }

  pushDynamic() {
    if (!userLogin.value) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    Get.toNamed('/memberDynamics?mid=${userInfo.value.mid}',
        preventDuplicates: false);
  }
}
