import 'dart:math';

import 'package:PiliPalaX/pages/main/controller.dart';
import 'package:PiliPalaX/pages/member/new/controller.dart'
    show MemberTabType, MemberTabTypeExt;
import 'package:PiliPalaX/utils/global_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/models/common/dynamics_type.dart';
import 'package:PiliPalaX/models/common/reply_sort_type.dart';
import 'package:PiliPalaX/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPalaX/utils/storage.dart';

import '../home/index.dart';
import 'controller.dart';
import 'widgets/switch_item.dart';

class ExtraSetting extends StatefulWidget {
  const ExtraSetting({super.key});

  @override
  State<ExtraSetting> createState() => _ExtraSettingState();
}

class _ExtraSettingState extends State<ExtraSetting> {
  Box setting = GStorage.setting;
  final SettingController settingController = Get.put(SettingController());
  late dynamic defaultReplySort;
  late dynamic defaultDynamicType;
  late MemberTabType defaultMemberTab;
  late dynamic enableSystemProxy;
  late String defaultSystemProxyHost;
  late String defaultSystemProxyPort;
  bool userLogin = false;

  @override
  void initState() {
    super.initState();
    // 默认优先显示最新评论
    defaultReplySort =
        setting.get(SettingBoxKey.replySortType, defaultValue: 1);
    if (defaultReplySort == 2) {
      setting.put(SettingBoxKey.replySortType, 0);
      defaultReplySort = 0;
    }
    // 优先展示全部动态 all
    defaultDynamicType =
        setting.get(SettingBoxKey.defaultDynamicType, defaultValue: 0);
    defaultMemberTab = GStorage.memberTab;
    enableSystemProxy =
        setting.get(SettingBoxKey.enableSystemProxy, defaultValue: false);
    defaultSystemProxyHost =
        setting.get(SettingBoxKey.systemProxyHost, defaultValue: '');
    defaultSystemProxyPort =
        setting.get(SettingBoxKey.systemProxyPort, defaultValue: '');
  }

  // 设置代理
  void twoFADialog() {
    var systemProxyHost = '';
    var systemProxyPort = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('设置代理'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  labelText: defaultSystemProxyHost != ''
                      ? defaultSystemProxyHost
                      : '请输入Host，使用 . 分割',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: defaultSystemProxyHost,
                ),
                onChanged: (e) {
                  systemProxyHost = e;
                },
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: defaultSystemProxyPort != ''
                      ? defaultSystemProxyPort
                      : '请输入Port',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: defaultSystemProxyPort,
                ),
                onChanged: (e) {
                  systemProxyPort = e;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                Get.back();
              },
              child: Text(
                '取消',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                setting.put(SettingBoxKey.systemProxyHost, systemProxyHost);
                setting.put(SettingBoxKey.systemProxyPort, systemProxyPort);
                Get.back();
                // Request.dio;
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(title: Text('其它设置')),
      body: ListView(
        children: [
          SetSwitchItem(
            title: '空降助手',
            subTitle: '点击配置',
            leading: Icon(Icons.block),
            setKey: SettingBoxKey.enableSponsorBlock,
            defaultVal: false,
            onTap: () => Get.toNamed('/sponsorBlock'),
          ),
          SetSwitchItem(
            title: '检查未读动态',
            subTitle: '点击设置检查周期(min)',
            leading: Icon(Icons.notifications_none),
            setKey: SettingBoxKey.checkDynamic,
            defaultVal: true,
            onChanged: (value) {
              Get.find<MainController>().checkDynamic = value;
            },
            onTap: () {
              int dynamicPeriod = GStorage.dynamicPeriod;
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('检查周期', style: TextStyle(fontSize: 18)),
                    content: TextFormField(
                      autofocus: true,
                      initialValue: dynamicPeriod.toString(),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      onChanged: (value) {
                        dynamicPeriod = int.tryParse(value) ?? 5;
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d+')),
                      ],
                      decoration: InputDecoration(suffixText: 'min'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: Get.back,
                        child: Text(
                          '取消',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                          GStorage.setting
                              .put(SettingBoxKey.dynamicPeriod, dynamicPeriod);
                          Get.find<MainController>().dynamicPeriod =
                              dynamicPeriod;
                        },
                        child: Text('确定'),
                      )
                    ],
                  );
                },
              );
            },
          ),
          SetSwitchItem(
            title: '使用gRPC加载评论',
            subTitle: '如无法加载评论，可关闭\n非gRPC楼中楼无法定位评论、按热度/时间排序、查看对话',
            leading: Icon(Icons.reply),
            setKey: SettingBoxKey.grpcReply,
            defaultVal: true,
            onChanged: (value) {
              GlobalData().grpcReply = value;
            },
          ),
          SetSwitchItem(
            title: '显示视频分段信息',
            leading: Transform.rotate(
              angle: pi / 2,
              child: Icon(Icons.reorder),
            ),
            setKey: SettingBoxKey.showViewPoints,
            defaultVal: true,
          ),
          SetSwitchItem(
            title: '视频页显示相关视频',
            leading: Icon(Icons.recommend_outlined),
            setKey: SettingBoxKey.showRelatedVideo,
            defaultVal: true,
          ),
          SetSwitchItem(
            title: '显示视频评论',
            leading: Icon(Icons.reply_all),
            setKey: SettingBoxKey.showVideoReply,
            defaultVal: true,
          ),
          SetSwitchItem(
            title: '显示番剧评论',
            leading: Icon(Icons.reply_all),
            setKey: SettingBoxKey.showBangumiReply,
            defaultVal: true,
          ),
          SetSwitchItem(
            title: '默认展开视频简介',
            leading: Icon(Icons.expand_more),
            setKey: SettingBoxKey.exapndIntroPanel,
            defaultVal: false,
          ),
          Obx(
            () => ListTile(
              enableFeedback: true,
              onTap: () => settingController.onOpenFeedBack(),
              leading: const Icon(Icons.vibration_outlined),
              title: Text('震动反馈', style: titleStyle),
              subtitle: Text('请确定手机设置中已开启震动反馈', style: subTitleStyle),
              trailing: Transform.scale(
                alignment: Alignment.centerRight,
                scale: 0.8,
                child: Switch(
                    thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                        (Set<WidgetState> states) {
                      if (states.isNotEmpty &&
                          states.first == WidgetState.selected) {
                        return const Icon(Icons.done);
                      }
                      return null; // All other states will use the default thumbIcon.
                    }),
                    value: settingController.feedBackEnable.value,
                    onChanged: (value) => settingController.onOpenFeedBack()),
              ),
            ),
          ),
          const SetSwitchItem(
            title: '大家都在搜',
            subTitle: '是否展示「大家都在搜」',
            leading: Icon(Icons.data_thresholding_outlined),
            setKey: SettingBoxKey.enableHotKey,
            defaultVal: true,
          ),
          SetSwitchItem(
            title: '搜索默认词',
            subTitle: '是否展示搜索框默认词',
            leading: const Icon(Icons.whatshot_outlined),
            setKey: SettingBoxKey.enableSearchWord,
            defaultVal: true,
            onChanged: (val) {
              Get.find<HomeController>().defaultSearch.value = '';
            },
          ),
          const SetSwitchItem(
            title: '快速收藏',
            subTitle: '点按收藏至默认，长按选择文件夹',
            leading: Icon(Icons.bookmark_add_outlined),
            setKey: SettingBoxKey.enableQuickFav,
            defaultVal: false,
          ),
          const SetSwitchItem(
            title: '评论区搜索关键词',
            subTitle: '展示评论区搜索关键词',
            leading: Icon(Icons.search_outlined),
            setKey: SettingBoxKey.enableWordRe,
            defaultVal: false,
          ),
          const SetSwitchItem(
            title: '启用ai总结',
            subTitle: '视频详情页开启ai总结',
            leading: Icon(Icons.engineering_outlined),
            setKey: SettingBoxKey.enableAi,
            defaultVal: true,
          ),
          const SetSwitchItem(
            title: '消息页禁用“收到的赞”功能',
            subTitle: '禁止打开入口，降低网络社交依赖',
            leading: Icon(Icons.beach_access_outlined),
            setKey: SettingBoxKey.disableLikeMsg,
            defaultVal: false,
          ),
          const SetSwitchItem(
            title: '默认展示评论区',
            subTitle: '在视频详情页默认切换至评论区页（仅tab型布局）',
            leading: Icon(Icons.mode_comment_outlined),
            setKey: SettingBoxKey.defaultShowComment,
            defaultVal: false,
          ),
          ListTile(
            dense: false,
            title: Text('评论展示', style: titleStyle),
            leading: const Icon(Icons.whatshot_outlined),
            subtitle: Text(
              '当前优先展示「${ReplySortType.values[defaultReplySort].titles}」',
              style: subTitleStyle,
            ),
            onTap: () async {
              int? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<int>(
                      title: '评论展示',
                      value: defaultReplySort,
                      values: ReplySortType.values.map((e) {
                        return {'title': e.titles, 'value': e.index};
                      }).toList());
                },
              );
              if (result != null) {
                defaultReplySort = result;
                setting.put(SettingBoxKey.replySortType, result);
                setState(() {});
              }
            },
          ),
          ListTile(
            dense: false,
            title: Text('动态展示', style: titleStyle),
            leading: const Icon(Icons.dynamic_feed_outlined),
            subtitle: Text(
              '当前优先展示「${DynamicsType.values[defaultDynamicType].labels}」',
              style: subTitleStyle,
            ),
            onTap: () async {
              int? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<int>(
                      title: '动态展示',
                      value: defaultDynamicType,
                      values: DynamicsType.values.sublist(0, 4).map((e) {
                        return {'title': e.labels, 'value': e.index};
                      }).toList());
                },
              );
              if (result != null) {
                defaultDynamicType = result;
                setting.put(SettingBoxKey.defaultDynamicType, result);
                setState(() {});
              }
            },
          ),
          ListTile(
            dense: false,
            title: Text('用户页默认展示TAB', style: titleStyle),
            leading: const Icon(Icons.tab),
            subtitle: Text(
              '当前优先展示「${defaultMemberTab.title}」',
              style: subTitleStyle,
            ),
            onTap: () async {
              MemberTabType? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<MemberTabType>(
                      title: '用户页默认展示TAB',
                      value: defaultMemberTab,
                      values: MemberTabType.values.map((e) {
                        return {'title': e.title, 'value': e};
                      }).toList());
                },
              );
              if (result != null) {
                defaultMemberTab = result;
                setting.put(SettingBoxKey.memberTab, result.index);
                setState(() {});
              }
            },
          ),
          ListTile(
            enableFeedback: true,
            onTap: () => twoFADialog(),
            leading: const Icon(Icons.airplane_ticket_outlined),
            title: Text('设置代理', style: titleStyle),
            subtitle: Text('设置代理 host:port', style: subTitleStyle),
            trailing: Transform.scale(
              alignment: Alignment.centerRight,
              scale: 0.8,
              child: Switch(
                thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                    (Set<WidgetState> states) {
                  if (states.isNotEmpty &&
                      states.first == WidgetState.selected) {
                    return const Icon(Icons.done);
                  }
                  return null; // All other states will use the default thumbIcon.
                }),
                value: enableSystemProxy,
                onChanged: (val) {
                  setting.put(
                      SettingBoxKey.enableSystemProxy, !enableSystemProxy);
                  setState(() {
                    enableSystemProxy = !enableSystemProxy;
                  });
                },
              ),
            ),
          ),
          const SetSwitchItem(
            title: '自动清除缓存',
            subTitle: '每次启动时清除缓存',
            leading: Icon(Icons.auto_delete_outlined),
            setKey: SettingBoxKey.autoClearCache,
            defaultVal: false,
          ),
          // const SetSwitchItem(
          //   title: '检查更新',
          //   subTitle: '每次启动时检查是否需要更新',
          //   leading: Icon(Icons.system_update_alt_outlined),
          //   setKey: SettingBoxKey.autoUpdate,
          //   defaultVal: false,
          // ),
        ],
      ),
    );
  }
}
