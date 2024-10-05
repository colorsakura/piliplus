import 'dart:math';

import 'package:PiliPalaX/common/widgets/article_content.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_reply.dart';
import 'package:PiliPalaX/common/widgets/html_render.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/pages/video/detail/reply/widgets/reply_item.dart';
import 'package:PiliPalaX/pages/video/detail/reply_reply/index.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:share_plus/share_plus.dart';

import '../../utils/grid.dart';
import 'controller.dart';

class HtmlRenderPage extends StatefulWidget {
  const HtmlRenderPage({super.key});

  @override
  State<HtmlRenderPage> createState() => _HtmlRenderPageState();
}

class _HtmlRenderPageState extends State<HtmlRenderPage>
    with TickerProviderStateMixin {
  final HtmlRenderController _htmlRenderCtr = Get.put(HtmlRenderController());
  late String title;
  late String id;
  late String url;
  late String dynamicType;
  late int type;
  bool _isFabVisible = true;
  late AnimationController fabAnimationCtr;

  @override
  void initState() {
    super.initState();
    title = Get.parameters['title']!;
    id = Get.parameters['id']!;
    url = Get.parameters['url']!;
    dynamicType = Get.parameters['dynamicType']!;
    type = dynamicType == 'picture' ? 11 : 12;
    fabAnimationCtr = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    fabAnimationCtr.forward();
    scrollListener();
  }

  @override
  void dispose() {
    fabAnimationCtr.dispose();
    _htmlRenderCtr.scrollController.removeListener(() {});
    super.dispose();
  }

  void scrollListener() {
    _htmlRenderCtr.scrollController.addListener(
      () {
        // 分页加载
        if (_htmlRenderCtr.scrollController.position.pixels >=
            _htmlRenderCtr.scrollController.position.maxScrollExtent - 300) {
          EasyThrottle.throttle('replylist', const Duration(seconds: 2), () {
            _htmlRenderCtr.onLoadMore();
          });
        }

        // 标题
        // if (scrollController.offset > 55 && !_visibleTitle) {
        //   _visibleTitle = true;
        //   titleStreamC.add(true);
        // } else if (scrollController.offset <= 55 && _visibleTitle) {
        //   _visibleTitle = false;
        //   titleStreamC.add(false);
        // }

        // fab按钮
        final ScrollDirection direction =
            _htmlRenderCtr.scrollController.position.userScrollDirection;
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
      fabAnimationCtr.forward();
    }
  }

  void _hideFab() {
    if (_isFabVisible) {
      _isFabVisible = false;
      fabAnimationCtr.reverse();
    }
  }

  void replyReply(replyItem) {
    int oid = replyItem.oid;
    int rpid = replyItem.rpid!;
    Get.to(
      () => Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          centerTitle: false,
          title: Text(
            '评论详情${replyItem.rcount > 0 ? '（${replyItem.rcount}）' : ''}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: VideoReplyReplyPanel(
          oid: oid,
          rpid: rpid,
          source: 'dynamic',
          replyType: ReplyType.values[type],
          firstFloor: replyItem,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          const SizedBox(width: 4),
          IconButton(
            tooltip: '用内置浏览器打开',
            onPressed: () {
              Get.toNamed('/webviewnew', parameters: {
                'url': url.startsWith('http') ? url : 'https:$url',
                'type': 'url',
                'pageTitle': title,
              });
            },
            icon: const Icon(Icons.open_in_browser_outlined, size: 19),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                onTap: () => {
                  _htmlRenderCtr.reqHtml(),
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.refresh, size: 19),
                    SizedBox(width: 10),
                    Text('刷新'),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () => {
                  Get.toNamed('/webviewnew', parameters: {
                    'url': url.startsWith('http') ? url : 'https:$url',
                    'type': 'url',
                    'pageTitle': title,
                  }),
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.open_in_new, size: 19),
                    SizedBox(width: 10),
                    Text('内置浏览器打开'),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () => {
                  Clipboard.setData(ClipboardData(text: url)),
                  SmartDialog.showToast('已复制'),
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.copy_rounded, size: 19),
                    SizedBox(width: 10),
                    Text('复制链接'),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () => Share.share(url),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.share_outlined, size: 19),
                    SizedBox(width: 10),
                    Text('分享'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 6)
        ],
      ),
      body: Stack(
        children: [
          OrientationBuilder(
            builder: (context, orientation) {
              double padding = max(context.width / 2 - Grid.maxRowWidth, 0);
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomScrollView(
                      controller: orientation == Orientation.portrait
                          ? _htmlRenderCtr.scrollController
                          : ScrollController(),
                      slivers: [
                        SliverPadding(
                          padding: orientation == Orientation.portrait
                              ? EdgeInsets.symmetric(horizontal: padding)
                              : EdgeInsets.only(left: padding / 2),
                          sliver: SliverToBoxAdapter(
                            child: Obx(
                              () => _htmlRenderCtr.loaded.value
                                  ? _buildHeader
                                  : const SizedBox(),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: orientation == Orientation.portrait
                              ? EdgeInsets.symmetric(horizontal: padding)
                              : EdgeInsets.only(left: padding / 2),
                          sliver: _buildContent,
                        ),
                        if (orientation == Orientation.portrait) ...[
                          SliverToBoxAdapter(
                            child: Divider(
                              thickness: 8,
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.05),
                            ),
                          ),
                          SliverToBoxAdapter(child: replyHeader()),
                          Obx(
                            () => replyList(_htmlRenderCtr.loadingState.value),
                          ),
                        ],
                      ],
                    ),
                  ),
                  if (orientation == Orientation.landscape) ...[
                    VerticalDivider(
                        thickness: 8,
                        color:
                            Theme.of(context).dividerColor.withOpacity(0.05)),
                    Expanded(
                      child: CustomScrollView(
                        controller: _htmlRenderCtr.scrollController,
                        slivers: [
                          SliverPadding(
                            padding: EdgeInsets.only(right: padding / 2),
                            sliver: SliverToBoxAdapter(
                              child: replyHeader(),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(right: padding / 2),
                            sliver: Obx(
                              () =>
                                  replyList(_htmlRenderCtr.loadingState.value),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 14,
            right: 14,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 2),
                end: const Offset(0, 0),
              ).animate(CurvedAnimation(
                parent: fabAnimationCtr,
                curve: Curves.easeInOut,
              )),
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  feedBack();
                  _htmlRenderCtr.onReply(
                    context,
                    oid: _htmlRenderCtr.oid.value,
                  );
                },
                tooltip: '评论动态',
                child: const Icon(Icons.reply),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget replyList(LoadingState loadingState) {
    return loadingState is Success
        ? SliverList.builder(
            itemCount: loadingState.response.length + 1,
            itemBuilder: (context, index) {
              if (index == loadingState.response.length) {
                return Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom),
                  height: MediaQuery.of(context).padding.bottom + 100,
                  child: Center(
                    child: Obx(
                      () => Text(
                        _htmlRenderCtr.noMore.value,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return ReplyItem(
                  replyItem: loadingState.response[index],
                  showReplyRow: true,
                  replyLevel: '1',
                  replyReply: replyReply,
                  replyType: ReplyType.values[type],
                  onReply: () {
                    _htmlRenderCtr.onReply(
                      context,
                      replyItem: loadingState.response[index],
                      index: index,
                    );
                  },
                  onDelete: _htmlRenderCtr.onMDelete,
                );
              }
            },
          )
        : loadingState is Error
            ? HttpError(
                errMsg: loadingState.errMsg,
                fn: _htmlRenderCtr.onReload,
              )
            : SliverList.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const VideoReplySkeleton();
                },
              );
  }

  Container replyHeader() {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(left: 12, right: 6),
      child: Row(
        children: [
          const Text('回复'),
          const Spacer(),
          SizedBox(
            height: 35,
            child: TextButton.icon(
              onPressed: () => _htmlRenderCtr.queryBySort(),
              icon: const Icon(Icons.sort, size: 16),
              label: Obx(
                () => Text(
                  _htmlRenderCtr.sortTypeLabel.value,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget get _buildHeader => Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
        child: Row(
          children: [
            NetworkImgLayer(
              width: 40,
              height: 40,
              type: 'avatar',
              src: _htmlRenderCtr.response['avatar']!,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_htmlRenderCtr.response['uname'],
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleSmall!.fontSize,
                    )),
                Text(
                  _htmlRenderCtr.response['updateTime'],
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                    fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      );

  Widget get _buildContent => SliverPadding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        sliver: Obx(
          () => _htmlRenderCtr.loaded.value
              ? _htmlRenderCtr.response['isJsonContent'] == true
                  ? ArticleContent(
                      htmlContent: _htmlRenderCtr.response['content'],
                    )
                  : SliverToBoxAdapter(
                      child: LayoutBuilder(
                        builder: (_, constraints) => HtmlRender(
                          htmlContent: _htmlRenderCtr.response['content'],
                          constrainedWidth: constraints.maxWidth,
                        ),
                      ),
                    )
              : SliverToBoxAdapter(
                  child: const SizedBox(),
                ),
        ),
      );
}
