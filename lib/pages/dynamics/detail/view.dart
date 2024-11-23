import 'dart:async';
import 'dart:math';

import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/video/detail/reply/widgets/reply_item_grpc.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_reply.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/dynamics/result.dart';
import 'package:PiliPalaX/pages/dynamics/detail/index.dart';
import 'package:PiliPalaX/pages/dynamics/widgets/author_panel.dart';
import 'package:PiliPalaX/pages/video/detail/reply_reply/index.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/id_utils.dart';

import '../../../utils/grid.dart';
import '../widgets/dynamic_panel.dart';

class DynamicDetailPage extends StatefulWidget {
  // const DynamicDetailPage({super.key});
  const DynamicDetailPage({super.key});

  @override
  State<DynamicDetailPage> createState() => _DynamicDetailPageState();
}

class _DynamicDetailPageState extends State<DynamicDetailPage>
    with TickerProviderStateMixin {
  late DynamicDetailController _dynamicDetailController;
  AnimationController? _fabAnimationCtr;
  late StreamController<bool> _titleStreamC; // appBar title
  bool _visibleTitle = false;
  String? action;
  // 回复类型
  late int replyType;
  bool _isFabVisible = true;
  int oid = 0;
  int? opusId;
  bool isOpusId = false;

  @override
  void initState() {
    super.initState();
    // floor 1原创 2转发
    init();
    _titleStreamC = StreamController<bool>();
    if (action == 'comment') {
      _visibleTitle = true;
      _titleStreamC.add(true);
    }

    _fabAnimationCtr = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fabAnimationCtr?.forward();
    // 滚动事件监听
    scrollListener();
  }

  // 页面初始化
  void init() async {
    Map args = Get.arguments;
    // 楼层
    int floor = args['floor'];
    // 从action栏点击进入
    action = args.containsKey('action') ? args['action'] : null;
    // 评论类型
    int commentType = args['item'].basic!['comment_type'] ?? 11;
    replyType = (commentType == 0) ? 11 : commentType;

    if (floor == 1) {
      oid = int.parse(args['item'].basic!['comment_id_str']);
    } else {
      try {
        ModuleDynamicModel moduleDynamic = args['item'].modules.moduleDynamic;
        String majorType = moduleDynamic.major!.type!;

        if (majorType == 'MAJOR_TYPE_OPUS') {
          // 转发的动态
          String jumpUrl = moduleDynamic.major!.opus!.jumpUrl!;
          opusId = int.parse(jumpUrl.split('/').last);
          if (opusId != null) {
            isOpusId = true;
            _dynamicDetailController = Get.put(
              DynamicDetailController(oid, replyType),
              tag: Utils.makeHeroTag(opusId),
            );
            await _dynamicDetailController.reqHtmlByOpusId(opusId!);
            setState(() {});
          }
        } else {
          oid = moduleDynamic.major!.draw!.id!;
        }
      } catch (_) {}
    }
    if (!isOpusId) {
      _dynamicDetailController = Get.put(
        DynamicDetailController(oid, replyType),
        tag: Utils.makeHeroTag(oid),
      );
    }
  }

  // 查看二级评论
  void replyReply(replyItem, id) {
    int oid = replyItem.oid.toInt();
    int rpid = replyItem.id.toInt()!;
    Get.to(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('评论详情')),
        body: VideoReplyReplyPanel(
          id: id,
          oid: oid,
          rpid: rpid,
          source: 'dynamic',
          replyType: ReplyType.values[replyType],
          firstFloor: replyItem,
        ),
      ),
    );
  }

  // 滑动事件监听
  void scrollListener() {
    _dynamicDetailController.scrollController.addListener(
      () {
        // 分页加载
        if (_dynamicDetailController.scrollController.position.pixels >=
            _dynamicDetailController.scrollController.position.maxScrollExtent -
                300) {
          EasyThrottle.throttle('replylist', const Duration(seconds: 2), () {
            _dynamicDetailController.onLoadMore();
          });
        }

        // 标题
        if (_dynamicDetailController.scrollController.offset > 55 &&
            !_visibleTitle) {
          _visibleTitle = true;
          _titleStreamC.add(true);
        } else if (_dynamicDetailController.scrollController.offset <= 55 &&
            _visibleTitle) {
          _visibleTitle = false;
          _titleStreamC.add(false);
        }

        // fab按钮
        final ScrollDirection direction = _dynamicDetailController
            .scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          _showFab();
        } else if (direction == ScrollDirection.reverse) {
          _hideFab();
        }
      },
    );
  }

  void _showFab() {
    if (!_isFabVisible) {
      _isFabVisible = true;
      _fabAnimationCtr?.forward();
    }
  }

  void _hideFab() {
    if (_isFabVisible) {
      _isFabVisible = false;
      _fabAnimationCtr?.reverse();
    }
  }

  @override
  void dispose() {
    _titleStreamC.close();
    _fabAnimationCtr?.dispose();
    _fabAnimationCtr = null;
    _dynamicDetailController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: _titleStreamC.stream,
          initialData: false,
          builder: (context, AsyncSnapshot snapshot) {
            return AnimatedOpacity(
              opacity: snapshot.data ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: AuthorPanel(
                item: _dynamicDetailController.item,
                source: 'detail', //to remove tag
              ),
            );
          },
        ),
        // actions: _detailModel != null ? appBarAction() : [],
      ),
      body: refreshIndicator(
        onRefresh: () async {
          await _dynamicDetailController.onRefresh();
        },
        child: Stack(
          children: [
            OrientationBuilder(
              builder: (context, orientation) {
                double padding = max(context.width / 2 - Grid.maxRowWidth, 0);
                if (orientation == Orientation.portrait) {
                  return CustomScrollView(
                    controller: _dynamicDetailController.scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: DynamicPanel(
                          item: _dynamicDetailController.item,
                          source: 'detail',
                        ),
                      ),
                      replyPersistentHeader(context),
                      Obx(
                        () => replyList(
                            _dynamicDetailController.loadingState.value),
                      ),
                    ]
                        .map<Widget>((e) => SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            sliver: e))
                        .toList(),
                  );
                } else {
                  return Row(
                    children: [
                      Expanded(
                        child: CustomScrollView(
                            controller: ScrollController(),
                            physics: const AlwaysScrollableScrollPhysics(),
                            slivers: [
                              SliverPadding(
                                  padding: EdgeInsets.only(left: padding / 2),
                                  sliver: SliverToBoxAdapter(
                                    child: DynamicPanel(
                                      item: _dynamicDetailController.item,
                                      source: 'detail',
                                    ),
                                  )),
                            ]),
                      ),
                      Expanded(
                        child: CustomScrollView(
                            controller:
                                _dynamicDetailController.scrollController,
                            physics: const AlwaysScrollableScrollPhysics(),
                            slivers: [
                              SliverPadding(
                                  padding: EdgeInsets.only(right: padding / 2),
                                  sliver: replyPersistentHeader(context)),
                              SliverPadding(
                                padding: EdgeInsets.only(right: padding / 2),
                                sliver: Obx(
                                  () => replyList(_dynamicDetailController
                                      .loadingState.value),
                                ),
                              ),
                            ]
                            // .map<Widget>(
                            //     (e) => SliverPadding(padding: padding, sliver: e))
                            // .toList(),
                            ),
                      ),
                    ],
                  );
                }
              },
            ),
            if (_fabAnimationCtr != null)
              Positioned(
                bottom: MediaQuery.of(context).padding.bottom + 14,
                right: 14,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 2),
                    end: const Offset(0, 0),
                  ).animate(CurvedAnimation(
                    parent: _fabAnimationCtr!,
                    curve: Curves.easeInOut,
                  )),
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      feedBack();
                      dynamic oid = _dynamicDetailController.oid ??
                          IdUtils.bv2av(Get.parameters['bvid']!);
                      _dynamicDetailController.onReply(context, oid: oid);
                    },
                    tooltip: '评论动态',
                    child: const Icon(Icons.reply),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  SliverPersistentHeader replyPersistentHeader(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _MySliverPersistentHeaderDelegate(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          height: 45,
          padding: const EdgeInsets.only(left: 12, right: 6),
          child: Row(
            children: [
              Obx(
                () => AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    '${_dynamicDetailController.count.value != -1 ? _dynamicDetailController.count.value : 0}条回复',
                    key: ValueKey<int>(_dynamicDetailController.count.value),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 35,
                child: TextButton.icon(
                  onPressed: () => _dynamicDetailController.queryBySort(),
                  icon: const Icon(Icons.sort, size: 16),
                  label: Obx(() => Text(
                        _dynamicDetailController.sortTypeLabel.value,
                        style: const TextStyle(fontSize: 13),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      pinned: true,
    );
  }

  Widget replyList(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoReplySkeleton();
            },
            childCount: 8,
          ),
        ),
      Success() => (loadingState.response.replies as List?)?.isNotEmpty == true
          ? SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == loadingState.response.replies.length) {
                    return Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom),
                      height: MediaQuery.of(context).padding.bottom + 100,
                      child: Center(
                        child: Obx(
                          () => Text(
                            _dynamicDetailController.noMore.value,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.outline,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return ReplyItemGrpc(
                      replyItem: loadingState.response.replies[index],
                      showReplyRow: true,
                      replyLevel: '1',
                      replyReply: replyReply,
                      replyType: ReplyType.values[replyType],
                      onReply: () {
                        _dynamicDetailController.onReply(
                          context,
                          replyItem: loadingState.response.replies[index],
                          index: index,
                        );
                      },
                      onDelete: _dynamicDetailController.onMDelete,
                      isTop: _dynamicDetailController.hasUpTop && index == 0,
                      upMid: loadingState.response.subjectControl.upMid,
                    );
                  }
                },
                childCount: loadingState.response.replies.length + 1,
              ),
            )
          : HttpError(
              callback: _dynamicDetailController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _dynamicDetailController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}

class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent = 45;
  final double _maxExtent = 45;
  final Widget child;

  _MySliverPersistentHeaderDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //创建child子组件
    //shrinkOffset：child偏移值minExtent~maxExtent
    //overlapsContent：SliverPersistentHeader覆盖其他子组件返回true，否则返回false
    return child;
  }

  //SliverPersistentHeader最大高度
  @override
  double get maxExtent => _maxExtent;

  //SliverPersistentHeader最小高度
  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant _MySliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
