import 'dart:async';

import 'package:PiliPalaX/http/msg.dart';
import 'package:PiliPalaX/models/common/dynamics_type.dart';
import 'package:PiliPalaX/models/common/up_panel_position.dart';
import 'package:PiliPalaX/pages/dynamics/tab/controller.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';

import 'controller.dart';
import 'widgets/up_panel.dart';

class DynamicsPage extends StatefulWidget {
  const DynamicsPage({super.key});

  @override
  State<DynamicsPage> createState() => _DynamicsPageState();
}

class _DynamicsPageState extends State<DynamicsPage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  final DynamicsController _dynamicsController = Get.put(DynamicsController());
  late Future _futureBuilderFutureUp;
  Box userInfoCache = GStorage.userInfo;
  late UpPanelPosition upPanelPosition;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _futureBuilderFutureUp = _dynamicsController.queryFollowUp();
    // _dynamicsController.tabController =
    //     TabController(vsync: this, length: DynamicsType.values.length);
    // ..addListener(() {
    //   if (!_dynamicsController.tabController.indexIsChanging) {
    //     // if (!mounted) return;
    //     // print('indexChanging: ${_dynamicsController.tabController.index}');
    //     _dynamicsController
    //         .onSelectType(_dynamicsController.tabController.index);
    //   }
    // });
    _dynamicsController.userLogin.listen((status) {
      if (mounted) {
        setState(() {
          _futureBuilderFutureUp = _dynamicsController.queryFollowUp();
        });
      }
    });
    upPanelPosition = UpPanelPosition.values[setting.get(
        SettingBoxKey.upPanelPosition,
        defaultValue: UpPanelPosition.leftFixed.code)];
    print('upPanelPosition: $upPanelPosition');
    if (GStorage.setting
        .get(SettingBoxKey.dynamicsShowAllFollowedUp, defaultValue: false)) {
      _dynamicsController.scrollController.addListener(() {
        if (_dynamicsController.scrollController.position.pixels >=
            _dynamicsController.scrollController.position.maxScrollExtent -
                300) {
          EasyThrottle.throttle('following', const Duration(seconds: 1), () {
            _dynamicsController.queryFollowing2();
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _dynamicsController.tabController.removeListener(() {});
    _dynamicsController.tabController.dispose();
    _dynamicsController.scrollController.removeListener(() {});
    _dynamicsController.scrollController.dispose();
    super.dispose();
  }

  Widget upPanelPart() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          //抽屉模式增加底色
          color: upPanelPosition.code > 1
              ? Theme.of(context).colorScheme.surface
              : Colors.transparent,
          width: 56,
          child: FutureBuilder(
            future: _futureBuilderFutureUp,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data == null) {
                  return const SizedBox();
                }
                Map data = snapshot.data;
                if (data['status']) {
                  return Obx(() => UpPanel(_dynamicsController.upData.value,
                      _dynamicsController.scrollController));
                } else {
                  return const SizedBox();
                }
              } else {
                return const SizedBox(
                  width: 56,
                  child: UpPanelSkeleton(),
                );
              }
            },
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                Theme.of(context).brightness == Brightness.light
                    ? Brightness.dark
                    : Brightness.light,
          ),
          title: SizedBox(
            height: 50,
            child: TabBar(
              controller: _dynamicsController.tabController,
              isScrollable: true,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              tabAlignment: TabAlignment.center,
              indicatorColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
              labelStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
              ),
              tabs:
                  DynamicsType.values.map((e) => Tab(text: e.labels)).toList(),
              onTap: (index) {
                if (!_dynamicsController.tabController.indexIsChanging) {
                  feedBack();
                  Get.find<DynamicsTabController>(tag: tabsConfig[index]['tag'])
                      .animateToTop();
                }
              },
            ),
          ),
          actions: [
            Container(
              width: 34,
              height: 34,
              margin: const EdgeInsets.only(right: 16),
              child: IconButton(
                tooltip: '发布动态',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  backgroundColor: WidgetStateProperty.resolveWith((states) {
                    return Theme.of(context).colorScheme.secondaryContainer;
                  }),
                ),
                onPressed: () {
                  if (GStorage.userInfo.get('userInfoCache') != null) {
                    showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: true,
                      builder: (_) => const CreatePanel(),
                    );
                  }
                },
                icon: Icon(
                  Icons.add,
                  size: 18,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
          ],
        ),
        drawer: upPanelPosition == UpPanelPosition.leftDrawer
            ? SafeArea(child: upPanelPart())
            : null,
        drawerEnableOpenDragGesture: true,
        endDrawer: upPanelPosition == UpPanelPosition.rightDrawer
            ? SafeArea(child: upPanelPart())
            : null,
        endDrawerEnableOpenDragGesture: true,
        body: Row(children: [
          if (upPanelPosition == UpPanelPosition.leftFixed) upPanelPart(),
          Expanded(
              child: TabBarView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _dynamicsController.tabController,
            children: _dynamicsController.tabsPageList,
          )),
          if (upPanelPosition == UpPanelPosition.rightFixed) upPanelPart(),
        ]));
  }
}

class CreatePanel extends StatefulWidget {
  const CreatePanel({super.key});

  @override
  State<CreatePanel> createState() => _CreatePanelState();
}

class _CreatePanelState extends State<CreatePanel> {
  final _ctr = TextEditingController();
  bool _isEnable = false;
  final _isEnableStream = StreamController<bool>();

  @override
  void dispose() {
    _ctr.dispose();
    super.dispose();
  }

  Future _onCreate() async {
    dynamic result = await MsgHttp.createTextDynamic(_ctr.text);
    if (result['status']) {
      Get.back();
      SmartDialog.showToast('发布成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            const SizedBox(width: 16),
            SizedBox(
              width: 34,
              height: 34,
              child: IconButton(
                tooltip: '返回',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) {
                      return Theme.of(context).colorScheme.secondaryContainer;
                    },
                  ),
                ),
                onPressed: Get.back,
                icon: Icon(
                  Icons.arrow_back_outlined,
                  size: 18,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              '发布动态',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            StreamBuilder(
              initialData: false,
              stream: _isEnableStream.stream,
              builder: (_, snapshot) => FilledButton.tonal(
                onPressed: snapshot.data == true ? _onCreate : null,
                style: FilledButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  visualDensity: const VisualDensity(
                    horizontal: -2,
                    vertical: -2,
                  ),
                ),
                child: const Text('发布'),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: _ctr,
            minLines: 4,
            maxLines: 8,
            autofocus: true,
            onChanged: (value) {
              bool isEmpty = value.replaceAll('\n', '').isEmpty;
              if (!isEmpty && !_isEnable) {
                _isEnable = true;
                _isEnableStream.add(true);
              } else if (isEmpty && _isEnable) {
                _isEnable = false;
                _isEnableStream.add(false);
              }
            },
            decoration: const InputDecoration(
              hintText: '说点什么吧',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                gapPadding: 0,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ],
    );
  }
}
