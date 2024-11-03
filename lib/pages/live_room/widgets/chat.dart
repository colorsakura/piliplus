import 'dart:convert';

import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/http/live.dart';
import 'package:PiliPalaX/models/live/danmu_info.dart';
import 'package:PiliPalaX/services/loggeer.dart';
import 'package:PiliPalaX/tcp/live.dart';
import 'package:flutter/material.dart';

import '../../../utils/storage.dart';

class LiveRoomChat extends StatefulWidget {
  final int roomId;
  const LiveRoomChat({super.key, required this.roomId});
  @override
  State<LiveRoomChat> createState() => _LiveRoomChatState();
}

class _LiveRoomChatState extends State<LiveRoomChat> {
  final List<Widget> _items = [];
  late LiveMessageStream msgStream;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 5,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _items,
        ),
      ),
    );
  }

  @override
  void initState() {
    LiveHttp.liveRoomGetDanmakuToken(roomId: widget.roomId).then((v) {
      if (v['status']) {
        LiveDanmakuInfo info = v['data'];
        // logger.d("info => $info");
        msgStream = LiveMessageStream(
          streamToken: info.data.token,
          roomId: widget.roomId,
          uid: GStorage.userInfo.get('userInfoCache').mid ?? 0,
          host: info.data.hostList[0].host,
          port: info.data.hostList[0].port,
        );
        msgStream.addEventListener((obj) {
          if (obj['cmd'] == 'DANMU_MSG') {
            // logger.i(' 原始弹幕消息 ======> ${jsonEncode(obj)}');
            setState(() {
              var widget = GestureDetector(
                onTap: () {
                  // showDialog(
                  //   context: context,
                  //   builder: (_) => AlertDialog(
                  //     content: SelectableText(
                  //         '${jsonDecode(obj['info'][0][15]['extra'])['emots']}'),
                  //   ),
                  // );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
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
                              '${obj['info'][0][15]['user']['base']['name']}: ',
                          style: const TextStyle(
                            color: Color(0xFFAAAAAA),
                            fontSize: 14,
                          ),
                        ),
                        _buildMsg(obj),
                      ],
                    ),
                  ),
                ),
              );
              _items.add(widget);
              if (_items.length >= 50) {
                _items.removeAt(0);
              }
            });
          }
        });
        msgStream.init();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    msgStream.close();
    super.dispose();
  }

  TextSpan _buildMsg(obj) {
    dynamic emots = jsonDecode(obj['info'][0][15]['extra'])['emots'];
    if (emots != null) {
      List list = emots.keys.map((e) {
        return e.replaceAllMapped(
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
          spanChildren.add(WidgetSpan(
            child: ExcludeSemantics(
                child: NetworkImgLayer(
              src: emots[key]['url'],
              type: 'emote',
              width: emots[key]['width'].toDouble(),
              height: emots[key]['height'].toDouble(),
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
