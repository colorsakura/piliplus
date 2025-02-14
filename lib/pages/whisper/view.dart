import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/models/msg/session.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/utils/utils.dart';

import 'controller.dart';

class WhisperPage extends StatefulWidget {
  const WhisperPage({super.key});

  @override
  State<WhisperPage> createState() => _WhisperPageState();
}

class _WhisperPageState extends State<WhisperPage> {
  late final WhisperController _whisperController =
      Get.put(WhisperController());
  late Future _futureBuilderFuture;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _whisperController.queryMsgFeedUnread();
    _futureBuilderFuture = _whisperController.querySessionList('init');
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  Future _scrollListener() async {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      EasyThrottle.throttle('my-throttler', const Duration(milliseconds: 800),
          () async {
        await _whisperController.onLoad();
        _whisperController.isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
        actions: [
          IconButton(
            icon: Icon(Icons.open_in_browser_outlined,
                color: Theme.of(context).colorScheme.primary),
            tooltip: '用浏览器打开',
            onPressed: () {
              Get.toNamed('/webview', parameters: {
                'url': 'https://message.bilibili.com',
                'type': 'whisper',
                'pageTitle': '消息中心',
                'ua': 'pc',
              });
            },
          ),
          const SizedBox(width: 12)
        ],
      ),
      body: refreshIndicator(
        onRefresh: () async {
          await Future.wait([
            _whisperController.queryMsgFeedUnread(),
            _whisperController.onRefresh(),
          ]);
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                // 在这里根据父级容器的约束条件构建小部件树
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 90,
                    child: Obx(
                      () => Row(
                        children: Iterable<int>.generate(
                                _whisperController.msgFeedTop.length)
                            .map((idx) {
                          return Expanded(
                              child: GestureDetector(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Badge(
                                  isLabelVisible: _whisperController
                                          .msgFeedTop[idx]['value'] >
                                      0,
                                  label: Text(
                                      " ${_whisperController.msgFeedTop[idx]['value']} "),
                                  alignment: Alignment.topRight,
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .onInverseSurface,
                                    child: Icon(
                                      _whisperController.msgFeedTop[idx]
                                          ['icon'],
                                      size: 20,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(_whisperController.msgFeedTop[idx]['name'],
                                    style: const TextStyle(fontSize: 13))
                              ],
                            ),
                            onTap: () {
                              if (!_whisperController.msgFeedTop[idx]
                                  ['enabled']) {
                                SmartDialog.showToast('已禁用');
                                return;
                              }
                              setState(() {
                                _whisperController.msgFeedTop[idx]['value'] = 0;
                              });
                              Get.toNamed(
                                  _whisperController.msgFeedTop[idx]['route']);
                            },
                          ));
                        }).toList(),
                      ),
                    ),
                  ),
                );
              }),
              FutureBuilder(
                future: _futureBuilderFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.data != null) {
                    // TODO: refactor
                    if (snapshot.data is! Map) {
                      return HttpError(
                        isSliver: false,
                        callback: () => setState(() {
                          _futureBuilderFuture =
                              _whisperController.querySessionList('init');
                        }),
                      );
                    }
                    Map data = snapshot.data as Map;
                    if (data['status']) {
                      List<SessionList> sessionList =
                          _whisperController.sessionList;
                      return Obx(
                        () => sessionList.isEmpty
                            ? const SizedBox()
                            : ListView.separated(
                                itemCount: sessionList.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, int i) {
                                  dynamic content =
                                      sessionList[i].lastMsg?.content;
                                  if (content == null || content == "") {
                                    content = '不支持的消息类型';
                                  } else {
                                    dynamic msg = content['text'] ??
                                        content['content'] ??
                                        content['title'] ??
                                        content['reply_content'];
                                    if (msg == null) {
                                      if (content['imageType'] != null) {
                                        msg = '[图片消息]';
                                      }
                                    }
                                    content = msg ?? content.toString();
                                  }
                                  return ListTile(
                                    tileColor: sessionList[i].topTs == 0
                                        ? null
                                        : Theme.of(context)
                                            .colorScheme
                                            .onInverseSurface,
                                    onLongPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            clipBehavior: Clip.hardEdge,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 12),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ListTile(
                                                  dense: true,
                                                  onTap: () {
                                                    Get.back();
                                                    _whisperController
                                                        .onSetTop(i);
                                                  },
                                                  title: Text(
                                                    sessionList[i].topTs == 0
                                                        ? '置顶'
                                                        : '移除置顶',
                                                    style: const TextStyle(
                                                        fontSize: 14),
                                                  ),
                                                ),
                                                ListTile(
                                                  dense: true,
                                                  onTap: () {
                                                    Get.back();
                                                    _whisperController
                                                        .onRemove(i);
                                                  },
                                                  title: const Text(
                                                    '删除',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    onTap: () {
                                      setState(() {
                                        sessionList[i].unreadCount = 0;
                                      });
                                      Get.toNamed(
                                        '/whisperDetail',
                                        parameters: {
                                          'talkerId':
                                              '${sessionList[i].talkerId}',
                                          'name': sessionList[i]
                                                  .accountInfo
                                                  ?.name ??
                                              '',
                                          'face': sessionList[i]
                                                  .accountInfo
                                                  ?.face ??
                                              '',
                                          if (sessionList[i].accountInfo?.mid !=
                                              null)
                                            'mid':
                                                '${sessionList[i].accountInfo?.mid}',
                                        },
                                      );
                                    },
                                    leading: Builder(builder: (context) {
                                      Widget buildAvatar() => NetworkImgLayer(
                                            width: 45,
                                            height: 45,
                                            type: 'avatar',
                                            src: sessionList[i]
                                                    .accountInfo
                                                    ?.face ??
                                                "",
                                          );
                                      return sessionList[i].unreadCount != null
                                          ? Badge(
                                              isLabelVisible:
                                                  sessionList[i].unreadCount! >
                                                      0,
                                              label: Text(
                                                  " ${sessionList[i].unreadCount} "),
                                              alignment: Alignment.topRight,
                                              child: buildAvatar(),
                                            )
                                          : buildAvatar();
                                    }),
                                    title: Text(
                                        sessionList[i].accountInfo?.name ?? ""),
                                    subtitle: Text(
                                      '$content',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .outline),
                                    ),
                                    trailing:
                                        sessionList[i].lastMsg?.timestamp !=
                                                null
                                            ? Text(
                                                Utils.dateFormat(
                                                    sessionList[i]
                                                        .lastMsg!
                                                        .timestamp,
                                                    formatType: "day"),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall!
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .outline),
                                              )
                                            : null,
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return Divider(
                                    indent: 72,
                                    endIndent: 20,
                                    height: 6,
                                    color: Colors.grey.withOpacity(0.1),
                                  );
                                },
                              ),
                      );
                    } else {
                      // 请求错误
                      return Center(
                        child: Text(data['msg'] ?? '请求异常'),
                      );
                    }
                  } else {
                    // 骨架屏
                    return const SizedBox();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
