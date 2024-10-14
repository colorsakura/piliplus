import 'dart:convert';

import 'package:PiliPalaX/utils/app_scheme.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:uuid/rng.dart';

import 'controller.dart';

class SysMsgPage extends StatefulWidget {
  const SysMsgPage({super.key});

  @override
  State<SysMsgPage> createState() => _SysMsgPageState();
}

class _SysMsgPageState extends State<SysMsgPage> {
  late final SysMsgController _sysMsgController = Get.put(SysMsgController());
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _sysMsgController.queryMsgFeedSysMsg();
    super.initState();
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
        await _sysMsgController.onLoad();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('系统通知'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await _sysMsgController.onRefresh();
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Obx(
              () {
                if (_sysMsgController.msgFeedSysMsgList.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.separated(
                  itemCount: _sysMsgController.msgFeedSysMsgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, int i) {
                    String? content =
                        _sysMsgController.msgFeedSysMsgList[i].content;
                    if (content != null) {
                      try {
                        dynamic jsonContent = json.decode(content);
                        if (jsonContent != null && jsonContent['web'] != null) {
                          content = jsonContent['web'];
                        }
                      } catch (_) {}
                    }
                    return ListTile(
                      onTap: () {},
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  title: const Text('确定删除该通知?'),
                                  actions: [
                                    TextButton(
                                      onPressed: Get.back,
                                      child: Text(
                                        '取消',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                        _sysMsgController.onRemove(i);
                                      },
                                      child: const Text('确定'),
                                    ),
                                  ],
                                ));
                      },
                      title: Text(
                        "${_sysMsgController.msgFeedSysMsgList[i].title}",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text.rich(
                            _buildContent(content ?? ''),
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.85),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              "${_sysMsgController.msgFeedSysMsgList[i].timeAt}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      indent: 72,
                      endIndent: 20,
                      height: 6,
                      color: Colors.grey.withOpacity(0.1),
                    );
                  },
                );
              },
            );
          }),
        ),
      ),
    );
  }

  InlineSpan _buildContent(String content) {
    final List<InlineSpan> spanChildren = <InlineSpan>[];
    RegExp urlRegExp = RegExp(
        '#\\{([^}]*)\\}\\{"([^}]*)"\\}|https?:\\/\\/[^\\s/\$.?#].[^\\s]*|www\\.[^\\s/\$.?#].[^\\s]*');
    content.splitMapJoin(
      urlRegExp,
      onMatch: (Match match) {
        if (match[0]!.startsWith('#')) {
          spanChildren.add(
            TextSpan(
              text: match[1],
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  try {
                    Uri uri = Uri.parse(match[2]!);
                    PiliScheme.routePush(uri);
                  } catch (err) {
                    SmartDialog.showToast(err.toString());
                  }
                },
            ),
          );
        } else {
          spanChildren.add(
            TextSpan(
              text: '\u{1F517}网页链接',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  try {
                    Uri uri = Uri.parse(match[0]!);
                    PiliScheme.routePush(uri);
                  } catch (err) {
                    SmartDialog.showToast(err.toString());
                    Utils.copyText(match[0] ?? '');
                  }
                },
            ),
          );
        }
        return '';
      },
      onNonMatch: (String nonMatchStr) {
        spanChildren.add(
          TextSpan(text: nonMatchStr),
        );
        return '';
      },
    );
    return TextSpan(children: spanChildren);
  }
}
