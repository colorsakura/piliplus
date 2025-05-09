import 'package:PiliPlus/common/skeleton/whisper_item.dart';
import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/whisper/widgets/item.dart';
import 'package:PiliPlus/pages/whisper_secondary/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhisperSecPage extends StatefulWidget {
  const WhisperSecPage({
    super.key,
    required this.name,
    required this.sessionPageType,
  });

  final String name;
  final SessionPageType sessionPageType;

  @override
  State<WhisperSecPage> createState() => _WhisperSecPageState();
}

class _WhisperSecPageState extends State<WhisperSecPage> {
  late final WhisperSecController _controller = Get.put(
    WhisperSecController(sessionPageType: widget.sessionPageType),
    tag: widget.sessionPageType.name,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    showConfirmDialog(
                      context: context,
                      title: '一键已读',
                      content: '是否清除全部新消息提醒？',
                      onConfirm: _controller.onClearUnread,
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(
                        size: 17,
                        Icons.cleaning_services,
                      ),
                      Text('  一键已读'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    showConfirmDialog(
                      context: context,
                      title: '清空列表',
                      content: '清空后所有消息将被删除，无法恢复',
                      onConfirm: _controller.onDeleteList,
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(
                        size: 19,
                        Icons.delete_forever_outlined,
                      ),
                      Text('  清空列表'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: refreshIndicator(
        onRefresh: _controller.onRefresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.paddingOf(context).bottom + 80),
              sliver: Obx(() => _buildBody(_controller.loadingState.value)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState<List<Session>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverList.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return const WhisperItemSkeleton();
          },
        ),
      Success() => loadingState.response?.isNotEmpty == true
          ? SliverList.separated(
              itemCount: loadingState.response!.length,
              itemBuilder: (context, index) {
                if (index == loadingState.response!.length - 1) {
                  _controller.onLoadMore();
                }
                return WhisperSessionItem(
                  item: loadingState.response![index],
                  onSetTop: (isTop, talkerId) =>
                      _controller.onSetTop(index, isTop, talkerId),
                  onRemove: (talkerId) => _controller.onRemove(index, talkerId),
                  onTap: () => _controller.onTap(index),
                );
              },
              separatorBuilder: (context, index) => Divider(
                indent: 72,
                endIndent: 20,
                height: 1,
                color: Colors.grey.withOpacity(0.1),
              ),
            )
          : HttpError(
              onReload: _controller.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          onReload: _controller.onReload,
        ),
    };
  }
}
