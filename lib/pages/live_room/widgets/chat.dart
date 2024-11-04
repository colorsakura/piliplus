import 'dart:convert';

import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/http/live.dart';
import 'package:PiliPalaX/models/live/danmu_info.dart';
import 'package:PiliPalaX/pages/live_room/controller.dart';
import 'package:PiliPalaX/services/loggeer.dart';
import 'package:PiliPalaX/tcp/live.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../../utils/storage.dart';

class LiveRoomChat extends StatefulWidget {
  final int roomId;
  final LiveRoomController liveRoomController;
  const LiveRoomChat({
    super.key,
    required this.roomId,
    required this.liveRoomController,
  });
  @override
  State<LiveRoomChat> createState() => _LiveRoomChatState();
}

class _LiveRoomChatState extends State<LiveRoomChat> {
  LiveMessageStream? msgStream;

  final ScrollController _scrollController = ScrollController();

  bool get disableAutoScroll =>
      widget.liveRoomController.disableAutoScroll.value;

  void _scrollToBottom() {
    if (disableAutoScroll) return;
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linearToEaseOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.separated(
          controller: _scrollController,
          separatorBuilder: (_, index) => const SizedBox(height: 6),
          itemCount: widget.liveRoomController.messages.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(
                  color: Color(0x15FFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '${widget.liveRoomController.messages[index]['info'][0][15]['user']['base']['name']}: ',
                        style: const TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 14,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            try {
                              dynamic uid =
                                  widget.liveRoomController.messages[index]
                                      ['info'][0][15]['user']['uid'];
                              Get.toNamed(
                                '/member?mid=$uid',
                                arguments: {
                                  'heroTag': Utils.makeHeroTag(uid),
                                },
                              );
                            } catch (err) {
                              print(err.toString());
                              // SmartDialog.showToast(err.toString());
                            }
                          },
                      ),
                      _buildMsg(widget.liveRoomController.messages[index]),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Obx(
          () => widget.liveRoomController.disableAutoScroll.value
              ? Positioned(
                  right: 12,
                  bottom: 12,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_downward_rounded),
                    label: const Text('回到底部'),
                    onPressed: () {
                      widget.liveRoomController.disableAutoScroll.value = false;
                      _scrollToBottom();
                    },
                  ),
                )
              : const SizedBox.shrink(),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    LiveHttp.liveRoomGetDanmakuToken(roomId: widget.roomId).then((v) {
      if (v['status']) {
        LiveDanmakuInfo info = v['data'];
        // logger.d("info => $info");
        msgStream = LiveMessageStream(
          streamToken: info.data.token,
          roomId: widget.roomId,
          uid: GStorage.userInfo.get('userInfoCache')?.mid ?? 0,
          host: info.data.hostList[0].host,
          port: info.data.hostList[0].port,
        );
        msgStream?.addEventListener((obj) {
          if (obj['cmd'] == 'DANMU_MSG') {
            // logger.i(' 原始弹幕消息 ======> ${jsonEncode(obj)}');
            setState(() {
              widget.liveRoomController.messages.add(obj);
              WidgetsBinding.instance.addPostFrameCallback(
                (_) => _scrollToBottom(),
              );
            });
          }
        });
        msgStream?.init();
        _scrollController.addListener(() {
          if (_scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
            widget.liveRoomController.disableAutoScroll.value = true;
          } else if (_scrollController.position.userScrollDirection ==
              ScrollDirection.reverse) {
            final pos = _scrollController.position;
            if (pos.maxScrollExtent - pos.pixels <= 100) {
              widget.liveRoomController.disableAutoScroll.value = false;
            }
          }
        });
      }
    });
  }

  @override
  void dispose() {
    msgStream?.close();
    _scrollController.removeListener(() {});
    _scrollController.dispose();
    super.dispose();
  }

  TextSpan _buildMsg(obj) {
    dynamic emots = jsonDecode(obj['info'][0][15]['extra'])['emots'];
    dynamic uemote = obj['info'][0][13];
    List list = [
      if (emots != null) emots.keys,
      if (uemote is Map) uemote['emoticon_unique'].replaceFirst('upower_', '')
    ];
    if (list.isNotEmpty) {
      list = list.map((e) {
        return e.toString().replaceAllMapped(
              RegExp(r'\[(.*?)\]'),
              (match) => r'\[' + match.group(1)! + r'\]',
            );
      }).toList();
      RegExp regExp = RegExp(list.join('|'));
      final List<InlineSpan> spanChildren = <InlineSpan>[];
      (obj['info'][1] as String).splitMapJoin(
        regExp,
        onMatch: (Match match) {
          String key = match[0]!;
          dynamic emote = emots?[key] ?? uemote;
          spanChildren.add(WidgetSpan(
            child: ExcludeSemantics(
                child: NetworkImgLayer(
              src: emote['url'],
              type: 'emote',
              width: emote['width'].toDouble(),
              height: emote['height'].toDouble(),
              semanticsLabel: key,
            )),
          ));
          return '';
        },
        onNonMatch: (String nonMatchStr) {
          spanChildren.add(
            TextSpan(
              text: nonMatchStr,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
              ),
            ),
          );
          return '';
        },
      );
      return TextSpan(children: spanChildren);
    } else {
      return TextSpan(
        text: obj['info'][1],
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
        ),
      );
    }
  }
}

final PiliLogger logger = getLogger();
