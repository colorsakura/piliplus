import 'dart:async';
import 'dart:math';

import 'package:PiliPlus/common/widgets/custom_sliver_persistent_header_delegate.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/reply_sort_type.dart';
import 'package:PiliPlus/pages/dynamics/repost_dyn_panel.dart';
import 'package:PiliPlus/pages/video/detail/reply/widgets/reply_item.dart';
import 'package:PiliPlus/pages/video/detail/reply/widgets/reply_item_grpc.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/skeleton/video_reply.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/models/common/reply_type.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/dynamics/detail/index.dart';
import 'package:PiliPlus/pages/dynamics/widgets/author_panel.dart';
import 'package:PiliPlus/pages/video/detail/reply_reply/index.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:share_plus/share_plus.dart';

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
  // String? action;
  // 回复类型
  late int replyType;
  bool _isFabVisible = true;
  int oid = 0;
  int? opusId;
  bool isOpusId = false;

  late final List<double> _ratio = GStorage.dynamicDetailRatio;

  bool get _horizontalPreview =>
      context.orientation == Orientation.landscape &&
      _dynamicDetailController.horizontalPreview;

  late final _key = GlobalKey<ScaffoldState>();

  get _getImageCallback => _horizontalPreview
      ? (imgList, index) {
          bool needReverse =
              _fabAnimationCtr?.status.isForwardOrCompleted == true;
          if (needReverse) {
            _fabAnimationCtr?.reverse();
          }
          final ctr = AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 200),
          )..forward();
          Utils.onHorizontalPreview(
            _key,
            AnimationController(
              vsync: this,
              duration: Duration.zero,
            ),
            ctr,
            imgList,
            index,
            (value) async {
              if (needReverse) {
                needReverse = false;
                _fabAnimationCtr?.forward();
              }
              if (value == false) {
                await ctr.reverse();
              }
              try {
                ctr.dispose();
              } catch (_) {}
              if (value == false) {
                Get.back();
              }
            },
          );
        }
      : null;

  @override
  void initState() {
    super.initState();
    // floor 1原创 2转发
    init();
    _titleStreamC = StreamController<bool>();
    // if (action == 'comment') {
    //   _visibleTitle = true;
    //   _titleStreamC.add(true);
    // }

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
    // action = args.containsKey('action') ? args['action'] : null;
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
  void replyReply(context, replyItem, id, isTop) {
    EasyThrottle.throttle('replyReply', const Duration(milliseconds: 500), () {
      int oid = replyItem.oid.toInt();
      int rpid = GlobalData().grpcReply ? replyItem.id.toInt() : replyItem.rpid;
      Widget replyReplyPage(
              [bool automaticallyImplyLeading = true,
              VoidCallback? onDispose]) =>
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text('评论详情'),
              titleSpacing: automaticallyImplyLeading ? null : 12,
              automaticallyImplyLeading: automaticallyImplyLeading,
            ),
            body: VideoReplyReplyPanel(
              id: id,
              oid: oid,
              rpid: rpid,
              source: 'dynamic',
              replyType: ReplyType.values[replyType],
              firstFloor: replyItem,
              isTop: isTop ?? false,
              onDispose: onDispose,
            ),
          );
      if (this.context.orientation == Orientation.portrait) {
        Get.to(replyReplyPage);
      } else {
        ScaffoldState? scaffoldState = Scaffold.maybeOf(context);
        if (scaffoldState != null) {
          bool needReverse =
              _fabAnimationCtr?.status.isForwardOrCompleted == true;
          if (needReverse) {
            _fabAnimationCtr?.reverse();
          }
          scaffoldState.showBottomSheet(
            backgroundColor: Colors.transparent,
            (context) => MediaQuery.removePadding(
              context: context,
              removeLeft: true,
              child: replyReplyPage(
                false,
                () {
                  if (needReverse) {
                    _fabAnimationCtr?.forward();
                  }
                },
              ),
            ),
          );
        } else {
          Get.to(replyReplyPage);
        }
      }
    });
  }

  // 滑动事件监听
  void scrollListener() {
    _dynamicDetailController.scrollController.addListener(
      () {
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
      resizeToAvoidBottomInset: false,
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
        actions: context.orientation == Orientation.landscape
            ? [
                IconButton(
                  tooltip: '页面比例调节',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 56,
                            right: 16,
                          ),
                          width: context.width / 4,
                          height: 32,
                          child: Builder(
                            builder: (context) => Slider(
                              min: 1,
                              max: 100,
                              value: _ratio.first,
                              onChanged: (value) async {
                                if (value >= 10 && value <= 90) {
                                  _ratio[0] = value;
                                  _ratio[1] = 100 - value;
                                  await GStorage.setting.put(
                                    SettingBoxKey.dynamicDetailRatio,
                                    _ratio,
                                  );
                                  (context as Element).markNeedsBuild();
                                  setState(() {});
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  icon: Transform.rotate(
                    angle: pi / 2,
                    child: Icon(Icons.splitscreen, size: 19),
                  ),
                ),
                const SizedBox(width: 16),
              ]
            : null,
      ),
      body: context.orientation == Orientation.portrait
          ? refreshIndicator(
              onRefresh: () async {
                await _dynamicDetailController.onRefresh();
              },
              child: _buildBody(context.orientation),
            )
          : _buildBody(context.orientation),
    );
  }

  Widget _buildBody(Orientation orientation) => Stack(
        children: [
          Builder(
            builder: (context) {
              double padding = max(context.width / 2 - Grid.smallCardWidth, 0);
              if (orientation == Orientation.portrait) {
                return CustomScrollView(
                  controller: _dynamicDetailController.scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: DynamicPanel(
                        item: _dynamicDetailController.item,
                        source: 'detail',
                        callback: _getImageCallback,
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
                      flex: _ratio[0].toInt(),
                      child: CustomScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        slivers: [
                          SliverPadding(
                            padding: EdgeInsets.only(
                              left: padding / 4,
                              bottom: MediaQuery.paddingOf(context).bottom + 80,
                            ),
                            sliver: SliverToBoxAdapter(
                              child: DynamicPanel(
                                item: _dynamicDetailController.item,
                                source: 'detail',
                                callback: _getImageCallback,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: _ratio[1].toInt(),
                      child: Scaffold(
                        key: _key,
                        body: refreshIndicator(
                          onRefresh: () async {
                            await _dynamicDetailController.onRefresh();
                          },
                          child: CustomScrollView(
                            controller:
                                _dynamicDetailController.scrollController,
                            physics: const AlwaysScrollableScrollPhysics(),
                            slivers: [
                              SliverPadding(
                                padding: EdgeInsets.only(right: padding / 4),
                                sliver: replyPersistentHeader(context),
                              ),
                              SliverPadding(
                                padding: EdgeInsets.only(right: padding / 4),
                                sliver: Obx(
                                  () => replyList(_dynamicDetailController
                                      .loadingState.value),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
          if (_fabAnimationCtr != null)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: const Offset(0, 0),
                ).animate(CurvedAnimation(
                  parent: _fabAnimationCtr!,
                  curve: Curves.easeInOut,
                )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14, bottom: 14),
                      child: FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          feedBack();
                          _dynamicDetailController.onReply(
                            context,
                            oid: _dynamicDetailController.oid,
                            replyType: ReplyType.values[replyType],
                          );
                        },
                        tooltip: '评论动态',
                        child: const Icon(Icons.reply),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        border: Border(
                          top: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(0.08),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.paddingOf(context).bottom),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Builder(
                              builder: (btnContext) => TextButton.icon(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    useSafeArea: true,
                                    builder: (context) => RepostPanel(
                                      item: _dynamicDetailController.item,
                                      callback: () {
                                        int count = int.tryParse(
                                                _dynamicDetailController
                                                        .item
                                                        .modules
                                                        ?.moduleStat
                                                        ?.forward
                                                        ?.count ??
                                                    '0') ??
                                            0;
                                        _dynamicDetailController.item.modules
                                            ?.moduleStat ??= ModuleStatModel();
                                        _dynamicDetailController.item.modules!
                                            .moduleStat?.forward ??= ForWard();
                                        _dynamicDetailController
                                            .item
                                            .modules!
                                            .moduleStat!
                                            .forward!
                                            .count = (count + 1).toString();
                                        if (btnContext.mounted) {
                                          (btnContext as Element?)
                                              ?.markNeedsBuild();
                                        }
                                      },
                                    ),
                                  );
                                },
                                icon: Icon(
                                  FontAwesomeIcons.shareFromSquare,
                                  size: 16,
                                  color: Theme.of(context).colorScheme.outline,
                                  semanticLabel: "转发",
                                ),
                                style: TextButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  foregroundColor:
                                      Theme.of(context).colorScheme.outline,
                                ),
                                label: Text(
                                  _dynamicDetailController.item.modules
                                              ?.moduleStat?.forward?.count !=
                                          null
                                      ? Utils.numFormat(_dynamicDetailController
                                          .item
                                          .modules!
                                          .moduleStat!
                                          .forward!
                                          .count)
                                      : '转发',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {
                                Share.share(
                                    '${HttpString.dynamicShareBaseUrl}/${_dynamicDetailController.item.idStr}');
                              },
                              icon: Icon(
                                FontAwesomeIcons.shareNodes,
                                size: 16,
                                color: Theme.of(context).colorScheme.outline,
                                semanticLabel: "分享",
                              ),
                              style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                foregroundColor:
                                    Theme.of(context).colorScheme.outline,
                              ),
                              label: const Text('分享'),
                            ),
                          ),
                          Expanded(
                            child: Builder(
                              builder: (context) => TextButton.icon(
                                onPressed: () => Utils.onLikeDynamic(
                                  _dynamicDetailController.item,
                                  () {
                                    if (context.mounted) {
                                      (context as Element?)?.markNeedsBuild();
                                    }
                                  },
                                ),
                                icon: Icon(
                                  _dynamicDetailController.item.modules
                                              ?.moduleStat?.like?.status ==
                                          true
                                      ? FontAwesomeIcons.solidThumbsUp
                                      : FontAwesomeIcons.thumbsUp,
                                  size: 16,
                                  color: _dynamicDetailController.item.modules
                                              ?.moduleStat?.like?.status ==
                                          true
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.outline,
                                  semanticLabel: _dynamicDetailController
                                              .item
                                              .modules
                                              ?.moduleStat
                                              ?.like
                                              ?.status ==
                                          true
                                      ? "已赞"
                                      : "点赞",
                                ),
                                style: TextButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  foregroundColor:
                                      Theme.of(context).colorScheme.outline,
                                ),
                                label: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 400),
                                  transitionBuilder: (Widget child,
                                      Animation<double> animation) {
                                    return ScaleTransition(
                                        scale: animation, child: child);
                                  },
                                  child: Text(
                                    _dynamicDetailController.item.modules
                                                ?.moduleStat?.like?.count !=
                                            null
                                        ? Utils.numFormat(
                                            _dynamicDetailController
                                                .item
                                                .modules!
                                                .moduleStat!
                                                .like!
                                                .count)
                                        : '点赞',
                                    style: TextStyle(
                                      color: _dynamicDetailController
                                                  .item
                                                  .modules
                                                  ?.moduleStat
                                                  ?.like
                                                  ?.status ==
                                              true
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Theme.of(context)
                                              .colorScheme
                                              .outline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      );

  SliverPersistentHeader replyPersistentHeader(BuildContext context) {
    return SliverPersistentHeader(
      delegate: CustomSliverPersistentHeaderDelegate(
        bgColor: Theme.of(context).colorScheme.surface,
        child: Container(
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
                  icon: Icon(
                    Icons.sort,
                    size: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  label: Obx(() => Text(
                        _dynamicDetailController.sortType.value.label,
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
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
                    _dynamicDetailController.onLoadMore();
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom),
                      height: MediaQuery.of(context).padding.bottom + 100,
                      child: Text(
                        _dynamicDetailController.isEnd.not
                            ? '加载中...'
                            : loadingState.response.replies.isEmpty
                                ? '还没有评论'
                                : '没有更多了',
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    );
                  } else {
                    return GlobalData().grpcReply
                        ? ReplyItemGrpc(
                            replyItem: loadingState.response.replies[index],
                            showReplyRow: true,
                            replyLevel: '1',
                            replyReply: (replyItem, id, isTop) =>
                                replyReply(context, replyItem, id, isTop),
                            replyType: ReplyType.values[replyType],
                            onReply: () {
                              _dynamicDetailController.onReply(
                                context,
                                replyItem: loadingState.response.replies[index],
                                index: index,
                              );
                            },
                            onDelete: _dynamicDetailController.onMDelete,
                            isTop:
                                _dynamicDetailController.hasUpTop && index == 0,
                            upMid: loadingState.response.subjectControl.upMid,
                            callback: _getImageCallback,
                          )
                        : ReplyItem(
                            replyItem: loadingState.response.replies[index],
                            showReplyRow: true,
                            replyLevel: '1',
                            replyReply: (replyItem, id, isTop) =>
                                replyReply(context, replyItem, id, isTop),
                            replyType: ReplyType.values[replyType],
                            onReply: () {
                              _dynamicDetailController.onReply(
                                context,
                                replyItem: loadingState.response.replies[index],
                                index: index,
                              );
                            },
                            onDelete: _dynamicDetailController.onMDelete,
                            callback: _getImageCallback,
                          );
                  }
                },
                childCount: loadingState.response.replies.length + 1,
              ),
            )
          : HttpError(
              callback: _dynamicDetailController.onReload,
            ),
      Error() => replyErrorWidget(
          context,
          true,
          loadingState.errMsg,
          _dynamicDetailController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
