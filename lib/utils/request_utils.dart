import 'dart:convert';
import 'dart:math';

import 'package:PiliPlus/common/widgets/radio_widget.dart';
import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';
import 'package:PiliPlus/pages/dynamics/tab/controller.dart';
import 'package:PiliPlus/pages/later/controller.dart';
import 'package:PiliPlus/pages/video/detail/introduction/widgets/group_panel.dart';
import 'package:PiliPlus/utils/accounts/account.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

class RequestUtils {
  static Future actionRelationMod({
    required BuildContext context,
    required dynamic mid,
    required bool isFollow,
    required ValueChanged<int>? callback,
    Map? followStatus,
  }) async {
    if (mid == null) {
      return;
    }
    feedBack();
    if (!isFollow) {
      var res = await VideoHttp.relationMod(
        mid: mid,
        act: 1,
        reSrc: 11,
      );
      SmartDialog.showToast(res['status'] ? "关注成功" : res['msg']);
      if (res['status']) {
        callback?.call(2);
      }
    } else {
      if (followStatus == null) {
        Map<String, dynamic> result = await UserHttp.hasFollow(mid);
        if (result['status']) {
          followStatus = result['data'];
        } else {
          SmartDialog.showToast(result['msg']);
          return;
        }
      }
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) {
            bool isSpecialFollowed = followStatus!['special'] == 1;
            String text = isSpecialFollowed ? '移除特别关注' : '加入特别关注';
            return AlertDialog(
              clipBehavior: Clip.hardEdge,
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      final res = await MemberHttp.specialAction(
                        fid: mid,
                        isAdd: !isSpecialFollowed,
                      );
                      if (res['status']) {
                        SmartDialog.showToast('$text成功');
                        callback?.call(-10);
                      } else {
                        SmartDialog.showToast(res['msg']);
                      }
                    },
                    title: Text(
                      text,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      var result = await showModalBottomSheet<List?>(
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        sheetAnimationStyle: AnimationStyle(curve: Curves.ease),
                        constraints: BoxConstraints(
                          maxWidth: min(640, min(Get.width, Get.height)),
                        ),
                        builder: (BuildContext context) {
                          return DraggableScrollableSheet(
                            minChildSize: 0,
                            maxChildSize: 1,
                            initialChildSize: 0.7,
                            snap: true,
                            expand: false,
                            snapSizes: const [0.7],
                            builder: (BuildContext context,
                                ScrollController scrollController) {
                              return GroupPanel(
                                mid: mid,
                                tags: followStatus!['tag'],
                                scrollController: scrollController,
                              );
                            },
                          );
                        },
                      );
                      followStatus!['tag'] = result;
                      if (result != null) {
                        callback?.call(2);
                      }
                    },
                    title: const Text(
                      '设置分组',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      var res = await VideoHttp.relationMod(
                        mid: mid,
                        act: 2,
                        reSrc: 11,
                      );
                      SmartDialog.showToast(
                          res['status'] ? "取消关注成功" : res['msg']);
                      if (res['status']) {
                        callback?.call(0);
                      }
                    },
                    title: const Text(
                      '取消关注',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    }
  }

  static ReplyInfo replyCast(res) {
    Map? emote = res['content']['emote'];
    emote?.forEach((key, value) {
      value['size'] = value['meta']['size'];
    });
    return ReplyInfo.create()
      ..mergeFromProto3Json(
        res
          ..['id'] = res['rpid']
          ..['member']['name'] = res['member']['uname']
          ..['member']['face'] = res['member']['avatar']
          ..['member']['level'] = res['member']['level_info']['current_level']
          ..['member']['vipStatus'] = res['member']['vip']['vipStatus']
          ..['member']['vipType'] = res['member']['vip']['vipType']
          ..['member']['officialVerifyType'] =
              res['member']['official_verify']['type']
          ..['content']['emote'] = emote,
        ignoreUnknownFields: true,
      );
  }

  static Future<dynamic> getWwebid(mid) async {
    try {
      dynamic response = await Request().get(
        '${HttpString.spaceBaseUrl}/$mid/dynamic',
        options: Options(
          extra: {'account': AnonymousAccount()},
        ),
      );
      dom.Document document = html_parser.parse(response.data);
      dom.Element? scriptElement =
          document.querySelector('script#__RENDER_DATA__');
      return jsonDecode(
          Uri.decodeComponent(scriptElement?.text ?? ''))['access_id'];
    } catch (e) {
      debugPrint('failed to get wwebid: $e');
      return null;
    }
  }

  static Future insertCreatedDyn(result) async {
    try {
      dynamic id = result['data']['dyn_id'];
      if (id != null) {
        await Future.delayed(const Duration(milliseconds: 200));
        dynamic res = await DynamicsHttp.dynamicDetail(id: id);
        if (res['status']) {
          final ctr = Get.find<DynamicsTabController>(tag: 'all');
          if (ctr.loadingState.value is Success) {
            List<DynamicItemModel>? list =
                (ctr.loadingState.value as Success).response;
            if (list != null) {
              list.insert(0, res['data']);
              ctr.loadingState.refresh();
              return;
            }
          }
          ctr.loadingState.value = LoadingState.success([res['data']]);
        }
      }
    } catch (e) {
      debugPrint('create dyn $e');
    }
  }

  static Future checkCreatedDyn({id, dynText, isManual}) async {
    if (isManual == true || GStorage.enableCreateDynAntifraud) {
      try {
        if (id != null) {
          if (isManual != true) {
            await Future.delayed(const Duration(seconds: 5));
          }
          dynamic res =
              await DynamicsHttp.dynamicDetail(id: id, clearCookie: true);
          showDialog(
            context: Get.context!,
            builder: (context) => AlertDialog(
              title: Text('动态检查结果'),
              content: SelectableText(
                  '${res['status'] ? '无账号状态下找到了你的动态，动态正常！' : '你的动态被shadow ban（仅自己可见）！'}${dynText != null ? ' \n\n动态内容: $dynText' : ''}'),
            ),
          );
        }
      } catch (e) {
        debugPrint('check dyn error: $e');
      }
    }
  }

  // 动态点赞
  static Future onLikeDynamic(item, VoidCallback callback) async {
    feedBack();
    String dynamicId = item.idStr!;
    // 1 已点赞 2 不喜欢 0 未操作
    item.modules?.moduleStat ??= ModuleStatModel();
    item.modules?.moduleStat.like ??= Like();
    Like like = item.modules.moduleStat.like;
    int count = like.count == '点赞' ? 0 : int.parse(like.count ?? '0');
    bool status = like.status ?? false;
    int up = status ? 2 : 1;
    var res = await DynamicsHttp.likeDynamic(dynamicId: dynamicId, up: up);
    if (res['status']) {
      SmartDialog.showToast(!status ? '点赞成功' : '取消赞');
      if (up == 1) {
        item.modules.moduleStat.like.count = (count + 1).toString();
        item.modules.moduleStat.like.status = true;
      } else {
        if (count == 1) {
          item.modules.moduleStat.like.count = '点赞';
        } else {
          item.modules.moduleStat.like.count = (count - 1).toString();
        }
        item.modules.moduleStat.like.status = false;
      }
      callback();
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  static void onCopyOrMove<R, T extends MultiSelectData>({
    required BuildContext context,
    required bool isCopy,
    required MultiSelectController<R, T> ctr,
    required dynamic mediaId,
    required dynamic mid,
  }) {
    VideoHttp.allFavFolders(mid).then((res) {
      if (context.mounted &&
          res['status'] &&
          (res['data'].list as List?)?.isNotEmpty == true) {
        List<FavFolderItemData> list = res['data'].list;
        dynamic checkedId;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('${isCopy ? '复制' : '移动'}到'),
              contentPadding: const EdgeInsets.only(top: 5),
              content: SingleChildScrollView(
                child: Builder(
                  builder: (context) => Column(
                    children: List.generate(list.length, (index) {
                      return RadioWidget(
                        padding: const EdgeInsets.only(left: 14),
                        title: list[index].title ?? '',
                        groupValue: checkedId,
                        value: list[index].id,
                        onChanged: (value) {
                          checkedId = value;
                          if (context.mounted) {
                            (context as Element).markNeedsBuild();
                          }
                        },
                      );
                    }),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: Get.back,
                  child: Text(
                    '取消',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.outline),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (checkedId != null) {
                      List resources = ((ctr.loadingState.value as Success)
                              .response as List<T>)
                          .where((e) => e.checked == true)
                          .toList();
                      SmartDialog.showLoading();
                      VideoHttp.copyOrMoveFav(
                        isCopy: isCopy,
                        isFav: ctr is! LaterController,
                        srcMediaId: mediaId,
                        tarMediaId: checkedId,
                        resources: resources
                            .map((item) => ctr is LaterController
                                ? item.aid
                                : '${item.id}:${item.type}')
                            .toList(),
                        mid: isCopy ? mid : null,
                      ).then((res) {
                        if (res['status']) {
                          ctr.handleSelect(false);
                          if (isCopy.not) {
                            List<T> dataList =
                                (ctr.loadingState.value as Success).response;
                            List<T> remainList = dataList
                                .toSet()
                                .difference(resources.toSet())
                                .toList();
                            ctr.loadingState.value =
                                LoadingState.success(remainList);
                          }
                          SmartDialog.dismiss();
                          SmartDialog.showToast('${isCopy ? '复制' : '移动'}成功');
                          Get.back();
                        } else {
                          SmartDialog.dismiss();
                          SmartDialog.showToast('${res['msg']}');
                        }
                      });
                    }
                  },
                  child: Text('确认'),
                ),
              ],
            );
          },
        );
      } else {
        SmartDialog.showToast('${res['msg']}');
      }
    });
  }
}
