import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/login.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../http/init.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = GStorage.isLogin.obs;
    final TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    final TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(title: Text('设置')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () => Get.toNamed('/settingsSearch'),
              borderRadius: BorderRadius.circular(50),
              child: Ink(
                padding: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).colorScheme.onInverseSurface,
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        size: MediaQuery.textScalerOf(context).scale(18),
                        Icons.search,
                      ),
                      const Text(' 搜索'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () => Get.toNamed('/privacySetting'),
            leading: const Icon(Icons.privacy_tip_outlined),
            title: Text('隐私设置', style: titleStyle),
            subtitle: Text('黑名单、access_key刷新、无痕模式', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/recommendSetting'),
            leading: const Icon(Icons.explore_outlined),
            title: Text('推荐流设置', style: titleStyle),
            subtitle: Text('推荐来源（web/app）、刷新保留内容、过滤器', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/videoSetting'),
            leading: const Icon(Icons.video_settings_outlined),
            title: Text('音视频设置', style: titleStyle),
            subtitle: Text('画质、音质、解码、缓冲、音频输出等', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/playSetting'),
            leading: const Icon(Icons.touch_app_outlined),
            title: Text('播放器设置', style: titleStyle),
            subtitle: Text('双击/长按、全屏、后台播放、弹幕、字幕、底部进度条等', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/styleSetting'),
            leading: const Icon(Icons.style_outlined),
            title: Text('外观设置', style: titleStyle),
            subtitle: Text('横屏适配（平板）、侧栏、列宽、首页、动态红点、主题、字号、图片、帧率等',
                style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/extraSetting'),
            leading: const Icon(Icons.extension_outlined),
            title: Text('其它设置', style: titleStyle),
            subtitle: Text('震动、搜索、收藏、ai、评论、动态、代理、更新检查等', style: subTitleStyle),
          ),
          Obx(
            () => isLogin.value.not
                ? const SizedBox.shrink()
                : ListTile(
                    leading: const Icon(Icons.logout_outlined),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('提示'),
                            content: const Text('确认要退出登录吗'),
                            actions: [
                              TextButton(
                                onPressed: Get.back,
                                child: Text(
                                  '点错了',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  // 清空cookie
                                  await Request.cookieManager.cookieJar
                                      .deleteAll();
                                  await CookieManager().deleteAllCookies();
                                  Request.dio.options.headers['cookie'] = '';
                                  // 清空本地存储的用户标识
                                  GStorage.userInfo.put('userInfoCache', null);
                                  GStorage.localCache.put(
                                      LocalCacheKey.accessKey,
                                      {'mid': -1, 'value': '', 'refresh': ''});
                                  isLogin.value = false;
                                  if (Get.isRegistered<MainController>()) {
                                    MainController mainController =
                                        Get.find<MainController>();
                                    mainController.isLogin.value = false;
                                  }
                                  await LoginUtils.onLogout();
                                  Get.back();
                                },
                                child: const Text('确认'),
                              )
                            ],
                          );
                        },
                      );
                    },
                    title: Text('退出登录', style: titleStyle),
                  ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            onTap: () => Get.toNamed('/about'),
            title: Text('关于', style: titleStyle),
          ),
        ],
      ),
    );
  }
}
