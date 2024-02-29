import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/interceptor_anonymity.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/utils/storage.dart';

import '../mine/controller.dart';

class PrivacySetting extends StatefulWidget {
  const PrivacySetting({super.key});

  @override
  State<PrivacySetting> createState() => _PrivacySettingState();
}

class _PrivacySettingState extends State<PrivacySetting> {
  bool userLogin = false;
  Box userInfoCache = GStrorage.userInfo;
  var userInfo;

  @override
  void initState() {
    super.initState();
    userInfo = userInfoCache.get('userInfoCache');
    userLogin = userInfo != null;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '隐私设置',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              if (!userLogin) {
                SmartDialog.showToast('登录后查看');
                return;
              }
              Get.toNamed('/blackListPage');
            },
            dense: false,
            title: Text('黑名单管理', style: titleStyle),
            subtitle: Text('已拉黑用户', style: subTitleStyle),
          ),
          ListTile(
            onTap: () {
              if (!userLogin) {
                SmartDialog.showToast('请先登录');
              }
              MemberHttp.cookieToKey();
            },
            dense: false,
            title: Text('刷新access_key', style: titleStyle),
            subtitle: Text(
                'access_key是app端的用户凭证，用于推荐接口。刷新将使用cookie请求新的access_key，小概率导致其他设备下线。若发现app端推荐内容不是个性化内容，可尝试刷新',
                style: subTitleStyle),
          ),
          ListTile(
              onTap: () {
                MineController.onChangeAnonymity(context);
                setState(() {});
              },
              dense: false,
              title: Text(MineController.anonymity ? '退出无痕模式' : '进入无痕模式',
                  style: titleStyle),
              subtitle: Text(
                MineController.anonymity
                    ? '已进入无痕模式，搜索、观看视频/直播不携带Cookie与CSRF，其余操作不受影响'
                    : '未开启无痕模式，将使用账户信息提供完整服务',
                style: subTitleStyle,
              )),
          ListTile(
            onTap: () {
              SmartDialog.show(
                builder: (context) {
                  return AlertDialog(
                    title: const Text('查看详情'),
                    content:
                        Text(AnonymityInterceptor.anonymityList.join('\n')),
                    actions: [
                      TextButton(
                        onPressed: () async {
                          SmartDialog.dismiss();
                        },
                        child: const Text('确认'),
                      )
                    ],
                  );
                },
              );
            },
            dense: false,
            title: Text('了解无痕模式', style: titleStyle),
            subtitle: Text('查看无痕模式作用的API列表', style: subTitleStyle),
          ),
        ],
      ),
    );
  }
}
