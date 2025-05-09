import 'package:PiliPlus/common/skeleton/whisper_item.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/whisper/widgets/item.dart';
import 'package:PiliPlus/pages/whisper_secondary/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
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
          Obx(() {
            if (_controller.threeDotItems.value?.isNotEmpty == true) {
              return PopupMenuButton(
                itemBuilder: (context) {
                  return _controller.threeDotItems.value!
                      .map((e) => PopupMenuItem(
                            onTap: () {
                              e.type.action(
                                  context: context,
                                  onConfirm: () {
                                    switch (e.type) {
                                      case ThreeDotItemType
                                            .THREE_DOT_ITEM_TYPE_READ_ALL:
                                        _controller.onClearUnread();
                                      case ThreeDotItemType
                                            .THREE_DOT_ITEM_TYPE_CLEAR_LIST:
                                        _controller.onDeleteList();
                                      default:
                                    }
                                  });
                            },
                            child: Row(
                              children: [
                                Icon(size: 17, e.type.icon),
                                Text('  ${e.title}'),
                              ],
                            ),
                          ))
                      .toList();
                },
              );
            }
            return const SizedBox.shrink();
          }),
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
