import 'dart:async';

import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:cookie_jar/cookie_jar.dart' as cookie_jar;

enum _WebviewMenuItem {
  refresh,
  copy,
  openInBrowser,
  clearCache,
  resetCookie,
  goBack,
}

extension _WebviewMenuItemExt on _WebviewMenuItem {
  String get title => [
        '刷新',
        '复制链接',
        '浏览器中打开',
        '清除缓存',
        '重新设置Cookie',
        '返回',
      ][index];
}

class WebviewPageNew extends StatefulWidget {
  const WebviewPageNew({super.key});

  @override
  State<WebviewPageNew> createState() => _WebviewPageNewState();
}

class _WebviewPageNewState extends State<WebviewPageNew> {
  final String _url = Get.parameters['url'] ?? '';
  final uaType = Get.parameters['uaType'] ?? 'mob';
  final _titleStream = StreamController<String?>();
  final _progressStream = StreamController<double>();

  InAppWebViewController? _webViewController;

  @override
  void dispose() {
    _titleStream.close();
    _progressStream.close();
    _webViewController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          initialData: null,
          stream: _titleStream.stream,
          builder: (context, snapshot) => Text(
            maxLines: 1,
            snapshot.hasData ? snapshot.data! : _url,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: StreamBuilder(
            initialData: 0.0,
            stream: _progressStream.stream,
            builder: (context, snapshot) => snapshot.data as double < 1
                ? LinearProgressIndicator(
                    value: snapshot.data as double,
                  )
                : const SizedBox.shrink(),
          ),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (item) async {
              switch (item) {
                case _WebviewMenuItem.refresh:
                  _webViewController?.reload();
                  break;
                case _WebviewMenuItem.copy:
                  WebUri? uri = await _webViewController?.getUrl();
                  if (uri != null) {
                    Utils.copyText(uri.toString());
                  }
                  break;
                case _WebviewMenuItem.openInBrowser:
                  WebUri? uri = await _webViewController?.getUrl();
                  if (uri != null) {
                    Utils.launchURL(uri.toString());
                  }
                  break;
                case _WebviewMenuItem.clearCache:
                  try {
                    await InAppWebViewController.clearAllCache();
                    await _webViewController?.clearHistory();
                    SmartDialog.showToast('已清理');
                  } catch (e) {
                    SmartDialog.showToast(e.toString());
                  }
                  break;
                case _WebviewMenuItem.goBack:
                  if (await _webViewController?.canGoBack() == true) {
                    _webViewController?.goBack();
                  } else {
                    Get.back();
                  }
                  break;
                case _WebviewMenuItem.resetCookie:
                  final List<cookie_jar.Cookie> cookies = await Request
                      .cookieManager.cookieJar
                      .loadForRequest(Uri.parse(HttpString.baseUrl));
                  for (cookie_jar.Cookie item in cookies) {
                    await CookieManager().setCookie(
                      url: WebUri(item.domain ?? ''),
                      name: item.name,
                      value: item.value,
                      path: item.path ?? '',
                      domain: item.domain,
                      isSecure: item.secure,
                      isHttpOnly: item.httpOnly,
                    );
                  }
                  SmartDialog.showToast('设置成功，刷新或重新打开网页');
                  break;
              }
            },
            itemBuilder: (context) => <PopupMenuEntry<_WebviewMenuItem>>[
              ..._WebviewMenuItem.values
                  .sublist(0, _WebviewMenuItem.values.length - 1)
                  .map((item) =>
                      PopupMenuItem(value: item, child: Text(item.title))),
              const PopupMenuDivider(),
              PopupMenuItem(
                  value: _WebviewMenuItem.goBack,
                  child: Text(
                    _WebviewMenuItem.goBack.title,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  )),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: InAppWebView(
          initialSettings: InAppWebViewSettings(
            clearCache: true,
            javaScriptEnabled: true,
            forceDark: ForceDark.AUTO,
            useHybridComposition: false,
            algorithmicDarkeningAllowed: true,
            useShouldOverrideUrlLoading: true,
            userAgent: Request().headerUa(type: uaType),
            mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
          ),
          initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(_url))),
          onWebViewCreated: (InAppWebViewController controller) {
            _webViewController = controller;
          },
          onProgressChanged: (controller, progress) {
            _progressStream.add(progress / 100);
          },
          onTitleChanged: (controller, title) {
            _titleStream.add(title);
          },
          onCloseWindow: (controller) => Get.back(
            result:
                _url.startsWith('https://www.bilibili.com/h5/comment/report')
                    ? true
                    : null,
          ),
          onLoadStop: (controller, url) {
            _webViewController?.evaluateJavascript(
              source: '''
                document.styleSheets[0].insertRule('div.open-app-btn.bili-btn-warp {display:none;}', 0);
                document.styleSheets[0].insertRule('#app__display-area > div.control-panel {display:none;}', 0);
                ''',
            );
            _webViewController?.evaluateJavascript(
              source: '''
                document.querySelector('#internationalHeader').remove();
                document.querySelector('#message-navbar').remove();
              ''',
            );
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            final String str = navigationAction.request.url!.pathSegments[0];
            final Map matchRes = IdUtils.matchAvorBv(input: str);
            final List matchKeys = matchRes.keys.toList();
            if (matchKeys.isNotEmpty) {
              if (matchKeys.first == 'BV') {
                Get.offAndToNamed(
                  '/searchResult',
                  parameters: {'keyword': matchRes['BV']},
                );
                return NavigationActionPolicy.CANCEL;
              }
            }

            var url = navigationAction.request.url!.toString();
            if (!url.startsWith('http')) {
              if (url.startsWith('bilibili://video/')) {
                String str = Uri.parse(url).pathSegments[0];
                Get.offAndToNamed(
                  '/searchResult',
                  parameters: {'keyword': str},
                );
              } else {
                var snackBar = SnackBar(
                  content: const Text('当前网页将要打开外部链接，是否打开'),
                  showCloseIcon: true,
                  action: SnackBarAction(
                    label: '打开',
                    onPressed: () => Utils.launchURL(url),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }

              return NavigationActionPolicy.CANCEL;
            }

            return NavigationActionPolicy.ALLOW;
          },
        ),
      ),
    );
  }
}
