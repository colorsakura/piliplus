import 'package:PiliPlus/common/skeleton/video_reply.dart';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/video/detail/note/note_list_page_ctr.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key, this.oid, this.upperMid});

  final dynamic oid;
  final dynamic upperMid;

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  late final _controller = Get.put(
    NoteListPageCtr(oid: widget.oid, upperMid: widget.upperMid),
  );

  @override
  void dispose() {
    Get.delete<NoteListPageCtr>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 16,
        toolbarHeight: 45,
        title: Obx(
          () => Text(
              '笔记${_controller.count.value == -1 ? '' : '(${_controller.count.value})'}'),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            height: 1,
            color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
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
      body: Obx(() => _buildBody(_controller.loadingState.value)),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const VideoReplySkeleton();
                },
                childCount: 8,
              ),
            )
          ],
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? refreshIndicator(
              onRefresh: () async {
                await _controller.onRefresh();
              },
              child: CustomScrollView(
                controller: ScrollController(),
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverList.separated(
                    itemBuilder: (context, index) {
                      if (index == loadingState.response.length - 1) {
                        _controller.onLoadMore();
                      }
                      return _itemWidget(context, loadingState.response[index]);
                    },
                    itemCount: loadingState.response.length,
                    separatorBuilder: (context, index) => Divider(
                      height: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .outline
                          .withOpacity(0.1),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: MediaQuery.paddingOf(context).bottom + 80,
                    ),
                  ),
                ],
              ),
            )
          : scrollErrorWidget(
              callback: _controller.onReload,
            ),
      Error() => scrollErrorWidget(
          errMsg: loadingState.errMsg,
          callback: _controller.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}

Widget _itemWidget(BuildContext context, dynamic item) {
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
              type: 'avatar',
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
                              : Theme.of(context).colorScheme.outline,
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
                    color: Theme.of(context).colorScheme.outline,
                    fontSize: 12,
                  ),
                ),
                if (item['summary'] != null) ...[
                  const SizedBox(height: 5),
                  Text(
                    item['summary'],
                    style: TextStyle(
                      height: 1.75,
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize,
                    ),
                  ),
                  if (item['web_url'] != null && item['web_url'] != '')
                    Text(
                      '查看全部',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        height: 1.75,
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
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
