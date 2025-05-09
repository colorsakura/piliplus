import 'package:PiliPlus/common/skeleton/whisper_item.dart';
import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/contact/view.dart';
import 'package:PiliPlus/pages/whisper/controller.dart';
import 'package:PiliPlus/pages/whisper/widgets/item.dart';
import 'package:PiliPlus/pages/whisper_settings/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class WhisperPage extends StatefulWidget {
  const WhisperPage({super.key});

  @override
  State<WhisperPage> createState() => _WhisperPageState();
}

class _WhisperPageState extends State<WhisperPage> {
  final _whisperController = Get.put(WhisperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
        actions: [
          IconButton(
            tooltip: '一键已读',
            onPressed: () {
              showConfirmDialog(
                context: context,
                title: '一键已读',
                content: '是否清除全部新消息提醒？',
                onConfirm: _whisperController.onClearUnread,
              );
            },
            icon: const Icon(
              size: 20,
              Icons.cleaning_services,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Get.to(const WhisperSettingsPage(
                      imSettingType: IMSettingType.SETTING_TYPE_NEED_ALL,
                    ));
                  },
                  child: const Row(
                    children: [
                      Icon(size: 19, Icons.settings),
                      Text('  消息设置'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    Get.toNamed(
                      '/whisperDetail',
                      parameters: {
                        'talkerId': '844424930131966',
                        'name': 'UP主小助手',
                        'face':
                            'https://message.biliimg.com/bfs/im/489a63efadfb202366c2f88853d2217b5ddc7a13.png',
                      },
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(size: 18, Icons.live_tv),
                      Text('  UP主小助手'),
                    ],
                  ),
                ),
                // PopupMenuItem(
                //   onTap: () {},
                //   child: const Row(
                //     children: [
                //       Icon(size: 19, Icons.notifications_none),
                //       Text('  应援团消息助手'),
                //     ],
                //   ),
                // ),
                PopupMenuItem(
                  onTap: () {
                    Get.to(const ContactPage(isFromSelct: false));
                  },
                  child: const Row(
                    children: [
                      Icon(size: 19, Icons.account_box_outlined),
                      Text('  通讯录'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: refreshIndicator(
        onRefresh: _whisperController.onRefresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            _buildTopItems,
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom + 100,
              ),
              sliver:
                  Obx(() => _buildBody(_whisperController.loadingState.value)),
            ),
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
                  _whisperController.onLoadMore();
                }
                return WhisperSessionItem(
                  item: loadingState.response![index],
                  onSetTop: (isTop, id) =>
                      _whisperController.onSetTop(index, isTop, id),
                  onRemove: (talkerId) =>
                      _whisperController.onRemove(index, talkerId),
                  onTap: () => _whisperController.onTap(index),
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
              onReload: _whisperController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          onReload: _whisperController.onReload,
        ),
    };
  }

  Widget get _buildTopItems => SliverSafeArea(
        top: false,
        bottom: false,
        sliver: SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_whisperController.msgFeedTopItems.length,
                (index) {
              final ThemeData theme = Theme.of(context);
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Badge(
                          isLabelVisible:
                              _whisperController.unreadCounts[index] > 0,
                          label: Text(
                              " ${_whisperController.unreadCounts[index]} "),
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: theme.colorScheme.onInverseSurface,
                            child: Icon(
                              _whisperController.msgFeedTopItems[index]['icon'],
                              size: 20,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _whisperController.msgFeedTopItems[index]['name'],
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  if (!_whisperController.msgFeedTopItems[index]['enabled']) {
                    SmartDialog.showToast('已禁用');
                    return;
                  }
                  _whisperController.unreadCounts[index] = 0;
                  Get.toNamed(
                    _whisperController.msgFeedTopItems[index]['route'],
                  );
                },
              );
            }).toList(),
          ),
        ),
      );
}
