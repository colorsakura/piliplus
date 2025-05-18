import 'package:PiliPlus/common/skeleton/video_reply.dart';
import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/pages/common/common_slide_page.dart';
import 'package:PiliPlus/pages/video/note/controller.dart';
import 'package:PiliPlus/pages/webview/view.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage.dart' show Accounts;
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class NoteListPage extends CommonSlidePage {
  const NoteListPage({
    super.key,
    super.enableSlide,
    required this.heroTag,
    this.oid,
    this.upperMid,
    required this.isStein,
    required this.title,
  });

  final dynamic heroTag;
  final dynamic oid;
  final dynamic upperMid;
  final bool isStein;
  final dynamic title;

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends CommonSlidePageState<NoteListPage> {
  late final _controller = Get.put(
    NoteListPageCtr(oid: widget.oid, upperMid: widget.upperMid),
    tag: widget.heroTag,
  );

  final _key = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    Get.delete<NoteListPageCtr>(tag: widget.heroTag);
    super.dispose();
  }

  @override
  Widget buildPage(ThemeData theme) {
    return Scaffold(
      key: _key,
      resizeToAvoidBottomInset: false,
      body: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 16,
          toolbarHeight: 45,
          title: Obx(
            () => Text(
                '笔记${_controller.count.value == -1 ? '' : '(${_controller.count.value})'}'),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Divider(
              height: 1,
              color: theme.colorScheme.outline.withValues(alpha: 0.1),
            ),
          ),
          actions: [
            iconButton(
              context: context,
              tooltip: '关闭',
              icon: Icons.clear,
              onPressed: Get.back,
              size: 32,
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: enableSlide ? slideList(theme) : buildList(theme),
      ),
    );
  }

  @override
  Widget buildList(ThemeData theme) {
    return refreshIndicator(
      onRefresh: _controller.onRefresh,
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _controller.scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 80),
                  sliver: Obx(
                      () => _buildBody(theme, _controller.loadingState.value)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 6,
              bottom: MediaQuery.paddingOf(context).bottom + 6,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.colorScheme.onInverseSurface,
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: theme.colorScheme.outline.withValues(alpha: 0.1),
                ),
              ),
            ),
            child: FilledButton.tonal(
              style: FilledButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
              ),
              onPressed: () {
                if (!Accounts.main.isLogin) {
                  SmartDialog.showToast('账号未登录');
                  return;
                }
                _key.currentState?.showBottomSheet(
                  (context) => WebviewPage(
                    oid: widget.oid,
                    title: widget.title,
                    url:
                        'https://www.bilibili.com/h5/note-app?oid=${widget.oid}&pagefrom=ugcvideo&is_stein_gate=${widget.isStein ? 1 : 0}',
                  ),
                );
              },
              child: const Text('开始记笔记'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<dynamic>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverToBoxAdapter(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const VideoReplySkeleton();
            },
            itemCount: 8,
          ),
        ),
      Success(:var response) => response?.isNotEmpty == true
          ? SliverList.separated(
              itemBuilder: (context, index) {
                if (index == response.length - 1) {
                  _controller.onLoadMore();
                }
                return _itemWidget(context, theme, response[index]);
              },
              itemCount: response!.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: theme.colorScheme.outline.withValues(alpha: 0.1),
              ),
            )
          : HttpError(onReload: _controller.onReload),
      Error(:var errMsg) => HttpError(
          errMsg: errMsg,
          onReload: _controller.onReload,
        ),
    };
  }
}

Widget _itemWidget(BuildContext context, ThemeData theme, dynamic item) {
  return InkWell(
    onTap: () {
      if (item['web_url'] != null && item['web_url'] != '') {
        PiliScheme.routePushFromUrl(item['web_url']);
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/member?mid=${item['author']['mid']}');
            },
            child: NetworkImgLayer(
              height: 34,
              width: 34,
              src: item['author']['face'],
              type: ImageType.avatar,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/member?mid=${item['author']['mid']}');
                  },
                  child: Row(
                    children: [
                      Text(
                        item['author']['name'],
                        style: TextStyle(
                          color: (item['author']?['vip_info']?['status'] ?? 0) >
                                      0 &&
                                  item['author']?['vip_info']?['type'] == 2
                              ? context.vipColor
                              : theme.colorScheme.outline,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Image.asset(
                        'assets/images/lv/lv${item['author']['level']}.png',
                        height: 11,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item['pubtime'],
                  style: TextStyle(
                    color: theme.colorScheme.outline,
                    fontSize: 12,
                  ),
                ),
                if (item['summary'] != null) ...[
                  const SizedBox(height: 5),
                  Text(
                    item['summary'],
                    style: TextStyle(
                      height: 1.75,
                      fontSize: theme.textTheme.bodyMedium!.fontSize,
                    ),
                  ),
                  if (item['web_url'] != null && item['web_url'] != '')
                    Text(
                      '查看全部',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        height: 1.75,
                        fontSize: theme.textTheme.bodyMedium!.fontSize,
                      ),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
