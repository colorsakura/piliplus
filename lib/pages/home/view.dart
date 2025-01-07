import 'dart:async';

import 'package:PiliPlus/models/common/dynamic_badge_mode.dart';
import 'package:PiliPlus/pages/main/index.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  final HomeController _homeController = Get.put(HomeController());
  late Stream<bool> stream;
  final MainController _mainController = Get.put(MainController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    stream = _homeController.searchBarStream.stream;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        children: [
          if (!_homeController.useSideBar) customAppBar,
          if (_homeController.tabs.length > 1) ...[
            ...[
              const SizedBox(height: 4),
              SizedBox(
                width: double.infinity,
                height: 42,
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    controller: _homeController.tabController,
                    tabs: [
                      for (var i in _homeController.tabs) Tab(text: i['label'])
                    ],
                    isScrollable: true,
                    dividerColor: Colors.transparent,
                    enableFeedback: true,
                    splashBorderRadius: BorderRadius.circular(10),
                    tabAlignment: TabAlignment.center,
                    onTap: (value) {
                      feedBack();
                      if (_homeController.tabController.indexIsChanging.not) {
                        _homeController.tabsCtrList[value]().animateToTop();
                      }
                    },
                  ),
                ),
              ),
            ],
          ] else ...[
            const SizedBox(height: 6),
          ],
          Expanded(
            child: TabBarView(
              controller: _homeController.tabController,
              children: _homeController.tabsPageList,
            ),
          ),
        ],
      ),
    );
  }

  Widget get searchBarAndUser {
    return Row(
      children: [
        searchBar,
        const SizedBox(width: 4),
        Obx(
          () => _homeController.userLogin.value
              ? Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    IconButton(
                      tooltip: '消息',
                      onPressed: () {
                        Get.toNamed('/whisper');
                        _mainController.msgUnReadCount.value = '';
                      },
                      icon: const Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    if (_mainController.msgBadgeMode !=
                            DynamicBadgeMode.hidden &&
                        _mainController.msgUnReadCount.value.isNotEmpty)
                      Positioned(
                        top: _mainController.msgBadgeMode ==
                                DynamicBadgeMode.number
                            ? 8
                            : 12,
                        left: _mainController.msgBadgeMode ==
                                DynamicBadgeMode.number
                            ? 24
                            : 32,
                        child: IgnorePointer(
                          child: Badge(
                            label: _mainController.msgBadgeMode ==
                                    DynamicBadgeMode.number
                                ? Text(_mainController.msgUnReadCount.value
                                    .toString())
                                : null,
                          ),
                        ),
                      ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
        const SizedBox(width: 8),
        Semantics(
          label: "我的",
          child: Obx(
            () => _homeController.userLogin.value
                ? Stack(
                    clipBehavior: Clip.none,
                    children: [
                      NetworkImgLayer(
                        type: 'avatar',
                        width: 34,
                        height: 34,
                        src: _homeController.userFace.value,
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () =>
                                _homeController.showUserInfoDialog(context),
                            splashColor: Theme.of(context)
                                .colorScheme
                                .primaryContainer
                                .withOpacity(0.3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -6,
                        bottom: -6,
                        child: Obx(() => MineController.anonymity.value
                            ? IgnorePointer(
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    size: 16,
                                    MdiIcons.incognito,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink()),
                      ),
                    ],
                  )
                : DefaultUser(
                    onPressed: () =>
                        _homeController.showUserInfoDialog(context),
                  ),
          ),
        ),
      ],
    );
  }

  Widget get customAppBar {
    return StreamBuilder(
      stream: _homeController.hideSearchBar
          ? stream
          : StreamController<bool>.broadcast().stream,
      initialData: true,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return AnimatedOpacity(
          opacity: snapshot.data ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: AnimatedContainer(
            curve: Curves.easeInOutCubicEmphasized,
            duration: const Duration(milliseconds: 500),
            height: snapshot.data ? 52 : 0,
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 0),
            child: searchBarAndUser,
          ),
        );
      },
    );
  }

  Widget get searchBar {
    return Expanded(
      child: Container(
        width: 250,
        height: 44,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Material(
          color: Theme.of(context)
              .colorScheme
              .onSecondaryContainer
              .withOpacity(0.05),
          child: InkWell(
            splashColor:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
            onTap: () => Get.toNamed(
              '/search',
              parameters: {
                if (_homeController.enableSearchWord)
                  'hintText': _homeController.defaultSearch.value,
              },
            ),
            child: Row(
              children: [
                const SizedBox(width: 14),
                Icon(
                  Icons.search_outlined,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  semanticLabel: '搜索',
                ),
                const SizedBox(width: 10),
                if (_homeController.enableSearchWord) ...[
                  Expanded(
                    child: Obx(
                      () => Text(
                        _homeController.defaultSearch.value,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.outline),
                      ),
                    ),
                  ),
                  const SizedBox(width: 2),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultUser extends StatelessWidget {
  const DefaultUser({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38,
      height: 38,
      child: IconButton(
        tooltip: '默认用户头像',
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.zero),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            return Theme.of(context).colorScheme.onInverseSurface;
          }),
        ),
        onPressed: onPressed,
        icon: Icon(
          Icons.person_rounded,
          size: 22,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
