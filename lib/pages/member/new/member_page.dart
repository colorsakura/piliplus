import 'dart:math';

import 'package:PiliPalaX/common/widgets/dynamic_sliver_appbar.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/bangumi/member_bangumi.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/favorite/member_favorite.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart';
import 'package:PiliPalaX/pages/member/new/content/member_dynamic/member_dynamic.dart';
import 'package:PiliPalaX/pages/member/new/content/member_home/member_home.dart';
import 'package:PiliPalaX/pages/member/new/controller.dart';
import 'package:PiliPalaX/pages/member/new/widget/user_info_card.dart';
import 'package:PiliPalaX/pages/member/view.dart';
import 'package:PiliPalaX/pages/member_dynamics/view.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberPageNew extends StatefulWidget {
  const MemberPageNew({super.key});

  @override
  State<MemberPageNew> createState() => _MemberPageNewState();
}

class _MemberPageNewState extends State<MemberPageNew>
    with TickerProviderStateMixin {
  int? _mid;
  String? _heroTag;
  late final MemberControllerNew _userController;

  @override
  void initState() {
    super.initState();
    _mid = int.parse(Get.parameters['mid']!);
    _heroTag = Get.arguments['heroTag'] ?? Utils.makeHeroTag(_mid);
    _userController = Get.put(
      MemberControllerNew(mid: _mid),
      tag: _heroTag,
    );
    _userController.scrollController.addListener(() {
      _userController.scrollRatio.value =
          min(1.0, _userController.scrollController.offset.round() / 150);
    });
  }

  @override
  Widget build(BuildContext context) {
    _userController.top ??= MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(
        () => _userController.loadingState.value is Success
            ? LayoutBuilder(
                builder: (_, constraints) {
                  if (constraints.maxHeight > constraints.maxWidth) {
                    return ExtendedNestedScrollView(
                      controller: _userController.scrollController,
                      onlyOneScrollInBody: true,
                      headerSliverBuilder: (context, innerBoxIsScrolled) {
                        return [
                          SliverOverlapAbsorber(
                            handle: ExtendedNestedScrollView
                                .sliverOverlapAbsorberHandleFor(context),
                            sliver: _buildAppBar(),
                          ),
                        ];
                      },
                      body: _userController.tab2 != null &&
                              _userController.tab2!.isNotEmpty
                          ? LayoutBuilder(
                              builder: (context, _) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    top: ExtendedNestedScrollView
                                                .sliverOverlapAbsorberHandleFor(
                                                    context)
                                            .layoutExtent ??
                                        0,
                                  ),
                                  child: _buildBody,
                                );
                              },
                            )
                          : Center(child: const Text('EMPTY')),
                    );
                  } else {
                    return Row(
                      children: [
                        Expanded(
                          child: CustomScrollView(
                            slivers: [
                              _buildAppBar(false),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SafeArea(
                            top: false,
                            left: false,
                            bottom: false,
                            child: Column(
                              children: [
                                SizedBox(height: _userController.top),
                                _buildTab,
                                Expanded(child: _buildBody),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              )
            : Center(
                child: _buildUserInfo(_userController.loadingState.value),
              ),
      ),
    );
  }

  Widget get _buildTab => TabBar(
        controller: _userController.tabController,
        tabs: _userController.tabs,
      );

  Widget get _buildBody => TabBarView(
        controller: _userController.tabController,
        children: _userController.tab2!.map((item) {
          return switch (item.param!) {
            'home' => MemberHome(heroTag: _heroTag),
            // 'dynamic' => MemberDynamic(mid: _mid ?? -1),
            'dynamic' => MemberDynamicsPage(mid: _mid),
            'contribute' => Obx(
                () => MemberContribute(
                  heroTag: _heroTag,
                  initialIndex: _userController.contributeInitialIndex.value,
                  mid: _mid ?? -1,
                ),
              ),
            'bangumi' => MemberBangumi(
                heroTag: _heroTag,
                mid: _mid ?? -1,
              ),
            'favorite' => MemberFavorite(
                heroTag: _heroTag,
                mid: _mid ?? -1,
              ),
            _ => Center(child: Text(item.title ?? '')),
          };
        }).toList(),
      );

  Widget _buildAppBar([bool needTab = true]) => MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeRight: true,
        child: DynamicSliverAppBar(
          leading: Padding(
            padding: EdgeInsets.only(top: _userController.top ?? 0),
            child: const BackButton(),
          ),
          title: Obx(() => _userController.scrollRatio.value == 1 &&
                  _userController.username != null
              ? Padding(
                  padding: EdgeInsets.only(top: _userController.top ?? 0),
                  child: Text(_userController.username!),
                )
              : const SizedBox.shrink()),
          pinned: true,
          scrolledUnderElevation: 0,
          flexibleSpace: _buildUserInfo(_userController.loadingState.value),
          bottom: needTab &&
                  _userController.tab2 != null &&
                  _userController.tab2!.isNotEmpty
              ? PreferredSize(
                  preferredSize: Size.fromHeight(48),
                  child: Material(
                    child: _buildTab,
                  ),
                )
              : null,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: _userController.top ?? 0),
              child: IconButton(
                tooltip: '搜索',
                onPressed: () => Get.toNamed(
                    '/memberSearch?mid=$_mid&uname=${_userController.username}'),
                icon: const Icon(Icons.search_outlined),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _userController.top ?? 0),
              child: PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  if (_userController.ownerMid != _mid) ...[
                    PopupMenuItem(
                      onTap: () => _userController.blockUser(context),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.block, size: 19),
                          const SizedBox(width: 10),
                          Text(_userController.relation.value != -1
                              ? '加入黑名单'
                              : '移除黑名单'),
                        ],
                      ),
                    )
                  ],
                  PopupMenuItem(
                    onTap: () => _userController.shareUser(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.share_outlined, size: 19),
                        const SizedBox(width: 10),
                        Text(_userController.ownerMid != _mid
                            ? '分享UP主'
                            : '分享我的主页'),
                      ],
                    ),
                  ),
                  if (_userController.ownerMid != null) ...[
                    const PopupMenuDivider(),
                    PopupMenuItem(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            clipBehavior: Clip.hardEdge,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                            content: ReportPanel(
                              name: _userController.username,
                              mid: _mid,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 19,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '举报',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.error),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 4),
          ],
        ),
      );

  Widget _errorWidget(msg) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        HttpError(
          errMsg: msg,
          fn: () {
            _userController.loadingState.value = LoadingState.loading();
            _userController.onRefresh();
          },
        )
      ],
    );
  }

  Widget _buildUserInfo(LoadingState userState) {
    switch (userState) {
      case Empty():
        return _errorWidget('EMPTY');
      case Error():
        return _errorWidget(userState.errMsg);
      case Success():
        return Obx(
          () => UserInfoCard(
            relation: _userController.relation.value,
            isFollow: _userController.isFollow.value,
            card: userState.response.card,
            images: userState.response.images,
            // onFollow: _userController.onFollow,
          ),
        );
    }
    return const CircularProgressIndicator();
  }
}
