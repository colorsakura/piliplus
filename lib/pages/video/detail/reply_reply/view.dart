import 'package:PiliPalaX/pages/video/detail/reply_new/reply_page.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_reply.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/pages/video/detail/reply/widgets/reply_item.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

import '../../../../utils/utils.dart';
import 'controller.dart';

class VideoReplyReplyPanel extends StatefulWidget {
  const VideoReplyReplyPanel({
    this.oid,
    this.rpid,
    this.closePanel,
    this.firstFloor,
    this.source,
    this.replyType,
    super.key,
  });
  final int? oid;
  final int? rpid;
  final Function? closePanel;
  final ReplyItemModel? firstFloor;
  final String? source;
  final ReplyType? replyType;

  @override
  State<VideoReplyReplyPanel> createState() => _VideoReplyReplyPanelState();
}

class _VideoReplyReplyPanelState extends State<VideoReplyReplyPanel> {
  late VideoReplyReplyController _videoReplyReplyController;
  Future? _futureBuilderFuture;
  late final _savedReplies = {};

  @override
  void initState() {
    super.initState();
    _videoReplyReplyController = Get.put(
        VideoReplyReplyController(
            widget.oid, widget.rpid.toString(), widget.replyType!),
        tag: widget.rpid.toString());

    // 上拉加载更多
    _videoReplyReplyController.scrollController.addListener(
      () {
        if (_videoReplyReplyController.scrollController.position.pixels >=
            _videoReplyReplyController
                    .scrollController.position.maxScrollExtent -
                300) {
          EasyThrottle.throttle('replylist', const Duration(milliseconds: 200),
              () {
            _videoReplyReplyController.queryReplyList(type: 'onLoad');
          });
        }
      },
    );

    _futureBuilderFuture = _videoReplyReplyController.queryReplyList();
  }

  void replyReply(replyItem) {}

  @override
  void dispose() {
    _videoReplyReplyController.scrollController.removeListener(() {});
    _videoReplyReplyController.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          widget.source == 'videoDetail' ? Utils.getSheetHeight(context) : null,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          if (widget.source == 'videoDetail')
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 12, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('评论详情'),
                  IconButton(
                    tooltip: '关闭',
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: () {
                      _videoReplyReplyController.currentPage = 0;
                      widget.closePanel!();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          Divider(
            height: 1,
            color: Theme.of(context).dividerColor.withOpacity(0.1),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() {});
                _videoReplyReplyController.currentPage = 0;
                return await _videoReplyReplyController.queryReplyList();
              },
              child: CustomScrollView(
                controller: _videoReplyReplyController.scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: <Widget>[
                  if (widget.firstFloor != null) ...[
                    // const SliverToBoxAdapter(child: SizedBox(height: 10)),
                    SliverToBoxAdapter(
                      child: ReplyItem(
                        replyItem: widget.firstFloor,
                        replyLevel: '2',
                        showReplyRow: false,
                        addReply: (replyItem) {
                          _videoReplyReplyController.replyList.add(replyItem);
                        },
                        replyType: widget.replyType,
                        replyReply: replyReply,
                        needDivider: false,
                        onReply: () {
                          _onReply(widget.firstFloor);
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Divider(
                        height: 20,
                        color: Theme.of(context).dividerColor.withOpacity(0.1),
                        thickness: 6,
                      ),
                    ),
                  ],
                  FutureBuilder(
                    future: _futureBuilderFuture,
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData) {
                        final Map data = snapshot.data as Map;
                        if (data['status']) {
                          // 请求成功
                          return SliverMainAxisGroup(
                            slivers: <Widget>[
                              if (widget.firstFloor == null &&
                                  _videoReplyReplyController.root != null) ...[
                                SliverToBoxAdapter(
                                  child: ReplyItem(
                                    replyItem: _videoReplyReplyController.root,
                                    replyLevel: '2',
                                    showReplyRow: false,
                                    addReply: (replyItem) {
                                      _videoReplyReplyController.replyList
                                          .add(replyItem);
                                    },
                                    replyType: widget.replyType,
                                    replyReply: replyReply,
                                    needDivider: false,
                                    onReply: () {
                                      _onReply(_videoReplyReplyController.root);
                                    },
                                  ),
                                ),
                                SliverToBoxAdapter(
                                  child: Divider(
                                    height: 20,
                                    color: Theme.of(context)
                                        .dividerColor
                                        .withOpacity(0.1),
                                    thickness: 6,
                                  ),
                                ),
                              ],
                              Obx(
                                () => SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                      if (index ==
                                          _videoReplyReplyController
                                              .replyList.length) {
                                        return Container(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .padding
                                                  .bottom),
                                          height: MediaQuery.of(context)
                                                  .padding
                                                  .bottom +
                                              100,
                                          child: Center(
                                            child: Obx(
                                              () => Text(
                                                _videoReplyReplyController
                                                    .noMore.value,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .outline,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return ReplyItem(
                                          replyItem: _videoReplyReplyController
                                              .replyList[index],
                                          replyLevel: '2',
                                          showReplyRow: false,
                                          addReply: (replyItem) {
                                            _videoReplyReplyController.replyList
                                                .add(replyItem);
                                          },
                                          replyType: widget.replyType,
                                          onReply: () {
                                            _onReply(_videoReplyReplyController
                                                .replyList[index]);
                                          },
                                          onDelete: (rpid, frpid) {
                                            _videoReplyReplyController
                                                    .replyList.value =
                                                _videoReplyReplyController
                                                    .replyList
                                                    .where((item) =>
                                                        item.rpid != rpid)
                                                    .toList();
                                          },
                                        );
                                      }
                                    },
                                    childCount: _videoReplyReplyController
                                            .replyList.length +
                                        1,
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          // 请求错误
                          return HttpError(
                            errMsg: data['msg'],
                            fn: () => setState(() {}),
                          );
                        }
                      } else {
                        // 骨架屏
                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            return const VideoReplySkeleton();
                          }, childCount: 8),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onReply(ReplyItemModel? item) {
    dynamic oid = item?.oid;
    dynamic root = item?.rpid;
    dynamic parent = item?.rpid;
    dynamic key = oid + root + parent;
    Navigator.of(context)
        .push(
      GetDialogRoute(
        pageBuilder: (buildContext, animation, secondaryAnimation) {
          return ReplyPage(
            oid: oid,
            root: root,
            parent: parent,
            replyType: ReplyType.video,
            replyItem: item,
            savedReply: _savedReplies[key],
            onSaveReply: (reply) {
              _savedReplies[key] = reply;
            },
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.linear;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    )
        .then((value) {
      // 完成评论，数据添加
      if (value != null && value['data'] != null) {
        _savedReplies[key] = null;
      }
    });
  }
}
