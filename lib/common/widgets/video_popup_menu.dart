import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/common/account_type.dart';
import 'package:PiliPlus/models/home/rcmd/result.dart';
import 'package:PiliPlus/models/model_video.dart';
import 'package:PiliPlus/models_new/space/space_archive/item.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/pages/search/widgets/search_text.dart';
import 'package:PiliPlus/pages/video/ai_conclusion/view.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/controller.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class _VideoCustomAction {
  final String title;
  final Widget icon;
  final VoidCallback onTap;
  const _VideoCustomAction(this.title, this.icon, this.onTap);
}

class VideoPopupMenu extends StatelessWidget {
  final double? size;
  final double? iconSize;
  final double menuItemHeight;
  final BaseSimpleVideoItemModel videoItem;
  final VoidCallback? onRemove;

  const VideoPopupMenu({
    super.key,
    required this.size,
    required this.iconSize,
    required this.videoItem,
    this.onRemove,
    this.menuItemHeight = 45,
  });

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _buildBottomSheetItems(context),
          ),
        );
      },
    );
  }

  List<Widget> _buildBottomSheetItems(BuildContext context) {
    final actions = <_VideoCustomAction>[];

    if (videoItem.bvid?.isNotEmpty == true) {
      actions.addAll([
        _VideoCustomAction(
          videoItem.bvid!,
          const Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(MdiIcons.identifier, size: 16),
              Icon(MdiIcons.circleOutline, size: 16),
            ],
          ),
          () => Utils.copyText(videoItem.bvid!),
        ),
        _VideoCustomAction(
          '稍后再看',
          const Icon(MdiIcons.clockTimeEightOutline, size: 16),
          () async {
            var res = await UserHttp.toViewLater(
              bvid: videoItem.bvid,
            );
            SmartDialog.showToast(res['msg']);
          },
        ),
        if (videoItem.cid != null && Pref.enableAi)
          _VideoCustomAction(
            'AI总结',
            const Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.circle_outlined, size: 16),
                ExcludeSemantics(
                  child: Text(
                    'AI',
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w700,
                    ),
                    strutStyle: StrutStyle(
                      fontSize: 10,
                      height: 1,
                      leading: 0,
                      fontWeight: FontWeight.w700,
                    ),
                    textScaler: TextScaler.noScaling,
                  ),
                ),
              ],
            ),
            () async {
              final res = await UgcIntroController.getAiConclusion(
                videoItem.bvid!,
                videoItem.cid!,
                videoItem.owner.mid,
              );
              if (res != null && context.mounted) {
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 420,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                          child: AiConclusionPanel.buildContent(
                            context,
                            Theme.of(context),
                            res,
                            tap: false,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
      ]);
    }

    if (videoItem is! SpaceArchiveItem) {
      actions.addAll([
        _VideoCustomAction(
          '访问：${videoItem.owner.name}',
          const Icon(MdiIcons.accountCircleOutline, size: 16),
          () => Get.toNamed('/member?mid=${videoItem.owner.mid}'),
        ),
        if (videoItem case RecVideoItemAppModel item)
          ..._createDislikeMenuItems(context, item)
        else
          _VideoCustomAction(
            '点踩此视频',
            const Icon(MdiIcons.thumbDownOutline, size: 16),
            () async {
              String? accessKey = Accounts.get(
                AccountType.recommend,
              ).accessKey;
              if (accessKey == null || accessKey == "") {
                SmartDialog.showToast("请退出账号后重新登录");
                return;
              }
              Navigator.of(context).pop();
              SmartDialog.showLoading(msg: '正在提交');
              var res = await VideoHttp.dislikeVideo(
                bvid: videoItem.bvid!,
                type: true,
              );
              SmartDialog.dismiss();
              SmartDialog.showToast(
                res['status'] ? "点踩成功" : res['msg'],
              );
              if (res['status']) {
                onRemove?.call();
              }
            },
          ),
        _VideoCustomAction(
          '拉黑：${videoItem.owner.name}',
          const Icon(MdiIcons.cancel, size: 16),
          () => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('提示'),
                content: Text(
                  '确定拉黑:${videoItem.owner.name}(${videoItem.owner.mid})?'
                  '\n\n注：被拉黑的Up可以在隐私设置-黑名单管理中解除',
                ),
                actions: [
                  TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: Text(
                      '点错了',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      Navigator.of(context).pop();
                      var res = await VideoHttp.relationMod(
                        mid: videoItem.owner.mid!,
                        act: 5,
                        reSrc: 11,
                      );
                      if (res['status']) {
                        onRemove?.call();
                      }
                      SmartDialog.showToast(res['msg'] ?? '成功');
                    },
                    child: const Text('确认'),
                  ),
                ],
              );
            },
          ),
        ),
      ]);
    }

    actions.add(
      _VideoCustomAction(
        "${MineController.anonymity.value ? '退出' : '进入'}无痕模式",
        MineController.anonymity.value
            ? const Icon(MdiIcons.incognitoOff, size: 16)
            : const Icon(MdiIcons.incognito, size: 16),
        MineController.onChangeAnonymity,
      ),
    );

    return actions.map((action) {
      return ListTile(
        leading: action.icon,
        title: Text(
          action.title,
          style: const TextStyle(fontSize: 14),
        ),
        onTap: () {
          Navigator.of(context).pop();
          action.onTap();
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        minLeadingWidth: 24,
      );
    }).toList();
  }

  List<_VideoCustomAction> _createDislikeMenuItems(
    BuildContext context,
    RecVideoItemAppModel item,
  ) {
    String? accessKey = Accounts.get(AccountType.recommend).accessKey;
    if (accessKey == null || accessKey == "") {
      return [
        _VideoCustomAction(
          '不感兴趣（请登录）',
          const Icon(MdiIcons.thumbDownOutline, size: 16),
          () => SmartDialog.showToast("请退出账号后重新登录"),
        ),
      ];
    }

    ThreePoint? tp = item.threePoint;
    if (tp == null) {
      return [
        _VideoCustomAction(
          '不感兴趣（获取数据失败）',
          const Icon(MdiIcons.thumbDownOutline, size: 16),
          () => SmartDialog.showToast("未能获取threePoint"),
        ),
      ];
    }

    if (tp.dislikeReasons == null && tp.feedbacks == null) {
      return [
        _VideoCustomAction(
          '不感兴趣（获取数据失败）',
          const Icon(MdiIcons.thumbDownOutline, size: 16),
          () => SmartDialog.showToast(
            "未能获取dislikeReasons或feedbacks",
          ),
        ),
      ];
    }

    List<_VideoCustomAction> dislikeActions = [];

    // Add main "不感兴趣" option
    dislikeActions.add(
      _VideoCustomAction(
        '不感兴趣',
        const Icon(MdiIcons.thumbDownOutline, size: 16),
        () {}, // This will be a parent item that doesn't do anything when clicked directly
      ),
    );

    // Add dislike reasons if available
    if (tp.dislikeReasons != null) {
      for (var reason in tp.dislikeReasons!) {
        dislikeActions.add(
          _VideoCustomAction(
            '  └ ${reason.name}',
            const Icon(MdiIcons.thumbDown, size: 14),
            () async {
              Navigator.of(context).pop();
              SmartDialog.showLoading(msg: '正在提交');
              var res = await VideoHttp.feedDislike(
                reasonId: reason.id,
                feedbackId: null,
                id: item.param!,
                goto: item.goto!,
              );
              SmartDialog.dismiss();
              SmartDialog.showToast(
                res['status'] ? (reason.toast ?? reason.name) : res['msg'],
              );
              if (res['status']) {
                onRemove?.call();
              }
            },
          ),
        );
      }
    }

    // Add feedback options if available
    if (tp.feedbacks != null) {
      for (var feedback in tp.feedbacks!) {
        dislikeActions.add(
          _VideoCustomAction(
            '  └ 反馈: ${feedback.name}',
            const Icon(MdiIcons.comment, size: 14),
            () async {
              Navigator.of(context).pop();
              SmartDialog.showLoading(msg: '正在提交');
              var res = await VideoHttp.feedDislike(
                reasonId: null,
                feedbackId: feedback.id,
                id: item.param!,
                goto: item.goto!,
              );
              SmartDialog.dismiss();
              SmartDialog.showToast(
                res['status'] ? (feedback.toast ?? feedback.name) : res['msg'],
              );
              if (res['status']) {
                onRemove?.call();
              }
            },
          ),
        );
      }
    }

    // Add cancel dislike option
    dislikeActions.add(
      _VideoCustomAction(
        '  └ 撤销不感兴趣',
        const Icon(MdiIcons.refresh, size: 14),
        () async {
          Navigator.of(context).pop();
          SmartDialog.showLoading(msg: '正在提交');
          var res = await VideoHttp.feedDislikeCancel(
            id: item.param!,
            goto: item.goto!,
          );
          SmartDialog.dismiss();
          SmartDialog.showToast(
            res['status'] ? "成功" : res['msg'],
          );
        },
      ),
    );

    return dislikeActions;
  }

  List<PopupMenuItem> _buildPopupMenuItems(BuildContext context) {
    final actions = <_VideoCustomAction>[];

    if (videoItem.bvid?.isNotEmpty == true) {
      actions.addAll([
        _VideoCustomAction(
          videoItem.bvid!,
          const Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(MdiIcons.identifier, size: 16),
              Icon(MdiIcons.circleOutline, size: 16),
            ],
          ),
          () => Utils.copyText(videoItem.bvid!),
        ),
        _VideoCustomAction(
          '稍后再看',
          const Icon(MdiIcons.clockTimeEightOutline, size: 16),
          () async {
            var res = await UserHttp.toViewLater(
              bvid: videoItem.bvid,
            );
            SmartDialog.showToast(res['msg']);
          },
        ),
        if (videoItem.cid != null && Pref.enableAi)
          _VideoCustomAction(
            'AI总结',
            const Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.circle_outlined, size: 16),
                ExcludeSemantics(
                  child: Text(
                    'AI',
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w700,
                    ),
                    strutStyle: StrutStyle(
                      fontSize: 10,
                      height: 1,
                      leading: 0,
                      fontWeight: FontWeight.w700,
                    ),
                    textScaler: TextScaler.noScaling,
                  ),
                ),
              ],
            ),
            () async {
              final res = await UgcIntroController.getAiConclusion(
                videoItem.bvid!,
                videoItem.cid!,
                videoItem.owner.mid,
              );
              if (res != null && context.mounted) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 420,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                          child: AiConclusionPanel.buildContent(
                            context,
                            Theme.of(context),
                            res,
                            tap: false,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
      ]);
    }

    if (videoItem is! SpaceArchiveItem) {
      actions.addAll([
        _VideoCustomAction(
          '访问：${videoItem.owner.name}',
          const Icon(MdiIcons.accountCircleOutline, size: 16),
          () => Get.toNamed('/member?mid=${videoItem.owner.mid}'),
        ),
        if (videoItem case RecVideoItemAppModel item)
          ..._createDislikeMenuItems(context, item)
        else
          _VideoCustomAction(
            '点踩此视频',
            const Icon(MdiIcons.thumbDownOutline, size: 16),
            () async {
              String? accessKey = Accounts.get(
                AccountType.recommend,
              ).accessKey;
              if (accessKey == null || accessKey == "") {
                SmartDialog.showToast("请退出账号后重新登录");
                return;
              }
              Get.back();
              SmartDialog.showLoading(msg: '正在提交');
              var res = await VideoHttp.dislikeVideo(
                bvid: videoItem.bvid!,
                type: true,
              );
              SmartDialog.dismiss();
              SmartDialog.showToast(
                res['status'] ? "点踩成功" : res['msg'],
              );
              if (res['status']) {
                onRemove?.call();
              }
            },
          ),
        _VideoCustomAction(
          '拉黑：${videoItem.owner.name}',
          const Icon(MdiIcons.cancel, size: 16),
          () => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('提示'),
                content: Text(
                  '确定拉黑:${videoItem.owner.name}(${videoItem.owner.mid})?'
                  '\n\n注：被拉黑的Up可以在隐私设置-黑名单管理中解除',
                ),
                actions: [
                  TextButton(
                    onPressed: Get.back,
                    child: Text(
                      '点错了',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      Get.back();
                      var res = await VideoHttp.relationMod(
                        mid: videoItem.owner.mid!,
                        act: 5,
                        reSrc: 11,
                      );
                      if (res['status']) {
                        onRemove?.call();
                      }
                      SmartDialog.showToast(res['msg'] ?? '成功');
                    },
                    child: const Text('确认'),
                  ),
                ],
              );
            },
          ),
        ),
      ]);
    }

    actions.add(
      _VideoCustomAction(
        "${MineController.anonymity.value ? '退出' : '进入'}无痕模式",
        MineController.anonymity.value
            ? const Icon(MdiIcons.incognitoOff, size: 16)
            : const Icon(MdiIcons.incognito, size: 16),
        MineController.onChangeAnonymity,
      ),
    );

    return actions
        .map(
          (e) => PopupMenuItem(
            height: menuItemHeight,
            onTap: e.onTap,
            child: Row(
              children: [
                e.icon,
                const SizedBox(width: 6),
                Expanded(
                  child: Text(e.title, style: const TextStyle(fontSize: 13)),
                ),
              ],
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: SizedBox(
        width: size,
        height: size,
        child:
            Theme.of(context).platform == TargetPlatform.android ||
                Theme.of(context).platform == TargetPlatform.iOS
            ? IconButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Theme.of(context).colorScheme.outline,
                  size: iconSize,
                ),
                onPressed: () => _showBottomSheet(context),
                padding: EdgeInsets.zero,
              )
            : PopupMenuButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Theme.of(context).colorScheme.outline,
                  size: iconSize,
                ),
                position: PopupMenuPosition.under,
                itemBuilder: (context) => _buildPopupMenuItems(context),
              ),
      ),
    );
  }
}
