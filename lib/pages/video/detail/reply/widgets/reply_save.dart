import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/video/detail/introduction/controller.dart';
import 'package:PiliPlus/pages/video/detail/reply/widgets/reply_item_grpc.dart';
import 'package:PiliPlus/utils/download.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:saver_gallery/saver_gallery.dart';
import 'package:share_plus/share_plus.dart';

class ReplySavePanel extends StatefulWidget {
  const ReplySavePanel({
    required this.upMid,
    required this.replyItem,
    super.key,
  });

  final dynamic upMid;
  final ReplyInfo replyItem;

  @override
  State<ReplySavePanel> createState() => _ReplySavePanelState();
}

class _ReplySavePanelState extends State<ReplySavePanel> {
  final boundaryKey = GlobalKey();

  String? cover;
  String? title;
  int? pubdate;
  String? uname;
  String uri = '';

  @override
  void initState() {
    super.initState();
    final currentRoute = Get.currentRoute;
    late final hasRoot = widget.replyItem.hasRoot();

    if (currentRoute.startsWith('/video')) {
      try {
        final heroTag = Get.arguments?['heroTag'];
        late final ctr = Get.find<VideoIntroController>(tag: heroTag);
        cover = ctr.videoDetail.value.pic;
        title = ctr.videoDetail.value.title;
        pubdate = ctr.videoDetail.value.pubdate;
        uname = ctr.videoDetail.value.owner?.name;
      } catch (_) {}
      uri =
          'bilibili://video/${widget.replyItem.oid}?comment_root_id=${hasRoot ? widget.replyItem.root : widget.replyItem.id}${hasRoot ? '&comment_secondary_id=${widget.replyItem.id}' : ''}';
    } else if (currentRoute.startsWith('/dynamicDetail')) {
      try {
        DynamicItemModel item = Get.arguments['item'];
        uname = item.modules?.moduleAuthor?.name;
        final type = widget.replyItem.type.toInt();
        late final oid = item.idStr;
        late final rootId =
            hasRoot ? widget.replyItem.root : widget.replyItem.id;
        late final anchor = hasRoot ? 'anchor=${widget.replyItem.id}&' : '';
        late final enterUri = 'bilibili://following/detail/$oid';
        uri = switch (type) {
          1 =>
            'bilibili://video/${item.basic!['rid_str']}?comment_root_id=${hasRoot ? widget.replyItem.root : widget.replyItem.id}${hasRoot ? '&comment_secondary_id=${widget.replyItem.id}' : ''}',
          11 ||
          12 =>
            'bilibili://comment/detail/$type/${item.basic!['rid_str']}/$rootId/?${anchor}enterUri=$enterUri',
          _ =>
            'bilibili://comment/detail/$type/$oid/$rootId/?${anchor}enterUri=$enterUri',
        };
      } catch (_) {}
    } else if (currentRoute.startsWith('/Scaffold')) {
      try {
        final type = widget.replyItem.type.toInt();
        late final oid = Get.arguments['oid'];
        late final rootId =
            hasRoot ? widget.replyItem.root : widget.replyItem.id;
        late final anchor = hasRoot ? 'anchor=${widget.replyItem.id}&' : '';
        late final enterUri = 'bilibili://following/detail/$oid';
        uri = switch (type) {
          1 =>
            'bilibili://video/$oid?comment_root_id=${hasRoot ? widget.replyItem.root : widget.replyItem.id}${hasRoot ? '&comment_secondary_id=${widget.replyItem.id}' : ''}',
          11 ||
          12 =>
            'bilibili://comment/detail/$type/$oid/$rootId/?${anchor}enterUri=${Get.arguments['enterUri']}',
          _ =>
            'bilibili://comment/detail/$type/$oid/$rootId/?${anchor}enterUri=$enterUri',
        };
      } catch (_) {}
    } else if (currentRoute.startsWith('/htmlRender')) {
      try {
        final type = widget.replyItem.type.toInt();
        late final oid = widget.replyItem.oid;
        late final rootId =
            hasRoot ? widget.replyItem.root : widget.replyItem.id;
        late final anchor = hasRoot ? 'anchor=${widget.replyItem.id}&' : '';
        late final enterUri =
            'bilibili://following/detail/${Get.parameters['id']}';
        uri =
            'bilibili://comment/detail/$type/$oid/$rootId/?${anchor}enterUri=$enterUri';
      } catch (_) {}
    }

    debugPrint(uri);
  }

  void _onSaveOrSharePic([bool isShare = false]) async {
    if (!isShare) {
      if (mounted &&
          !await DownloadUtils.checkPermissionDependOnSdkInt(context)) {
        return;
      }
    }
    SmartDialog.showLoading();
    try {
      RenderRepaintBoundary boundary = boundaryKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: 3);
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      String picName =
          "plpl_reply_${DateTime.now().toString().replaceAll(RegExp(r'[- :]'), '').split('.').first}";
      if (isShare) {
        Get.back();
        SmartDialog.dismiss();
        Share.shareXFiles(
          [
            XFile.fromData(
              pngBytes,
              name: picName,
              mimeType: 'image/png',
            )
          ],
          sharePositionOrigin: await Utils.isIpad()
              ? Rect.fromLTWH(0, 0, Get.width, Get.height / 2)
              : null,
        );
      } else {
        final result = await SaverGallery.saveImage(
          pngBytes,
          fileName: '$picName.png',
          androidRelativePath: "Pictures/PiliPlus",
          skipIfExists: false,
        );
        SmartDialog.dismiss();
        if (result.isSuccess) {
          Get.back();
          SmartDialog.showToast('保存成功');
        } else if (result.errorMessage?.isNotEmpty == true) {
          SmartDialog.showToast(result.errorMessage!);
        }
      }
    } catch (e) {
      debugPrint('on save/share reply: $e');
      SmartDialog.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Get.back();
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 12, bottom: 80),
            child: SafeArea(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: min(Get.width, Get.height),
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: RepaintBoundary(
                    key: boundaryKey,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IgnorePointer(
                            child: ReplyItemGrpc(
                              replyItem: widget.replyItem,
                              replyLevel: '',
                              needDivider: false,
                              upMid: widget.upMid,
                            ),
                          ),
                          if (cover?.isNotEmpty == true &&
                              title?.isNotEmpty == true)
                            Container(
                              height: 81,
                              clipBehavior: Clip.hardEdge,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onInverseSurface,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  NetworkImgLayer(
                                    radius: 6,
                                    src: cover!,
                                    height: MediaQuery.textScalerOf(context)
                                        .scale(65),
                                    width: MediaQuery.textScalerOf(context)
                                            .scale(65) *
                                        16 /
                                        9,
                                    quality: 100,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '$title\n',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        if (pubdate != null) ...[
                                          const Spacer(),
                                          Text(
                                            Utils.dateFormat(
                                              pubdate,
                                              formatType: 'detail',
                                            ),
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .outline,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logo/logo_2.png',
                                width: 100,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                              if (uri.isNotEmpty) ...[
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (uname?.isNotEmpty == true) ...[
                                        Text(
                                          '@$uname',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                      ],
                                      Text(
                                        '识别二维码，查看评论',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        DateTime.now()
                                            .toString()
                                            .split('.')
                                            .first,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  padding: const EdgeInsets.all(12),
                                  child: Container(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).colorScheme.surface,
                                    padding: const EdgeInsets.all(3),
                                    child: PrettyQrView.data(
                                      data: uri,
                                      decoration: const PrettyQrDecoration(
                                        shape: PrettyQrRoundedSymbol(
                                          borderRadius: BorderRadius.zero,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black87,
                    Colors.transparent,
                  ],
                ),
              ),
              padding: const EdgeInsets.only(bottom: 25),
              child: SafeArea(
                top: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconButton(
                      size: 42,
                      tooltip: '关闭',
                      context: context,
                      icon: Icons.clear,
                      onPressed: Get.back,
                      bgColor: Theme.of(context).colorScheme.onInverseSurface,
                      iconColor: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 40),
                    iconButton(
                      size: 42,
                      tooltip: '分享',
                      context: context,
                      icon: Icons.share,
                      onPressed: () => _onSaveOrSharePic(true),
                    ),
                    const SizedBox(width: 40),
                    iconButton(
                      size: 42,
                      tooltip: '保存',
                      context: context,
                      icon: Icons.save_alt,
                      onPressed: () => _onSaveOrSharePic(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
