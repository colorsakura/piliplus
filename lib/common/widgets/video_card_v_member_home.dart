import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:PiliPlus/models/space/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import '../../utils/utils.dart';
import '../constants.dart';
import 'badge.dart';
import 'network_img_layer.dart';

// 视频卡片 - 垂直布局
class VideoCardVMemberHome extends StatelessWidget {
  final Item videoItem;

  const VideoCardVMemberHome({
    super.key,
    required this.videoItem,
  });

  void onPushDetail(heroTag) async {
    String goto = videoItem.goto ?? '';
    switch (goto) {
      case 'bangumi':
        Utils.viewBangumi(epId: videoItem.param);
        break;
      case 'av':
        if (videoItem.isPgc == true && videoItem.uri?.isNotEmpty == true) {
          if (Utils.viewPgcFromUri(videoItem.uri!)) {
            return;
          }
        }
        String bvid = videoItem.bvid ?? '';
        Utils.toViewPage(
          'bvid=$bvid&cid=${videoItem.firstCid}',
          arguments: {
            // 'videoItem': videoItem,
            'pic': videoItem.cover,
            'heroTag': heroTag,
          },
        );
        break;
      // 动态
      // case 'picture':
      //   try {
      //     String dynamicType = 'picture';
      //     String uri = videoItem.uri;
      //     String id = '';
      //     if (videoItem.uri.startsWith('bilibili://article/')) {
      //       // https://www.bilibili.com/read/cv27063554
      //       dynamicType = 'read';
      //       RegExp regex = RegExp(r'\d+');
      //       Match match = regex.firstMatch(videoItem.uri)!;
      //       String matchedNumber = match.group(0)!;
      //       videoItem.param = int.parse(matchedNumber);
      //       id = 'cv${videoItem.param}';
      //     }
      //     if (uri.startsWith('http')) {
      //       String path = Uri.parse(uri).path;
      //       if (isStringNumeric(path.split('/')[1])) {
      //         // 请求接口
      //         var res =
      //             await DynamicsHttp.dynamicDetail(id: path.split('/')[1]);
      //         if (res['status']) {
      //           Get.toNamed('/dynamicDetail', arguments: {
      //             'item': res['data'],
      //             'floor': 1,
      //             'action': 'detail'
      //           });
      //         } else {
      //           SmartDialog.showToast(res['msg']);
      //         }
      //         return;
      //       }
      //     }
      //     Get.toNamed('/htmlRender', parameters: {
      //       'url': uri,
      //       'title': videoItem.title,
      //       'id': id,
      //       'dynamicType': dynamicType
      //     });
      //   } catch (err) {
      //     SmartDialog.showToast(err.toString());
      //   }
      //   break;
      default:
        SmartDialog.showToast(goto);
        Utils.handleWebview(videoItem.uri ?? '');
    }
  }

  @override
  Widget build(BuildContext context) {
    // List<VideoCustomAction> actions =
    //     VideoCustomActions(videoItem, context).actions;
    return Stack(children: [
      Semantics(
        // label: Utils.videoItemSemantics(videoItem),
        excludeSemantics: true,
        // customSemanticsActions: <CustomSemanticsAction, void Function()>{
        //   for (var item in actions)
        //     CustomSemanticsAction(label: item.title): item.onTap!,
        // },
        child: Card(
          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.zero,
          child: InkWell(
            onTap: () => onPushDetail(Utils.makeHeroTag(videoItem.bvid)),
            onLongPress: () => imageSaveDialog(
              context: context,
              title: videoItem.title,
              cover: videoItem.cover,
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: StyleString.aspectRatio,
                  child: LayoutBuilder(builder: (context, boxConstraints) {
                    double maxWidth = boxConstraints.maxWidth;
                    double maxHeight = boxConstraints.maxHeight;
                    return Stack(
                      children: [
                        NetworkImgLayer(
                          src: videoItem.cover,
                          width: maxWidth,
                          height: maxHeight,
                        ),
                        if ((videoItem.duration ?? -1) > 0)
                          PBadge(
                            bottom: 6,
                            right: 7,
                            size: 'small',
                            type: 'gray',
                            text: Utils.timeFormat(videoItem.duration),
                            // semanticsLabel:
                            //     '时长${Utils.durationReadFormat(Utils.timeFormat(videoItem.duration))}',
                          )
                      ],
                    );
                  }),
                ),
                videoContent(context, videoItem)
              ],
            ),
          ),
        ),
      ),
      // if (videoItem.goto == 'av')
      //   Positioned(
      //       right: -5,
      //       bottom: -2,
      //       child: VideoPopupMenu(
      //         size: 29,
      //         iconSize: 17,
      //         actions: actions,
      //       )),
    ]);
  }
}

Widget videoContent(BuildContext context, Item videoItem) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(6, 5, 6, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('${videoItem.title}\n',
                    // semanticsLabel: "${videoItem.title}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      height: 1.38,
                    )),
              ),
            ],
          ),
          // const Spacer(),
          // const SizedBox(height: 2),
          // VideoStat(
          //   videoItem: videoItem,
          // ),
          // Row(
          //   children: [
          // if (videoItem.goto == 'bangumi') ...[
          //   PBadge(
          //     text: videoItem.bangumiBadge,
          //     stack: 'normal',
          //     size: 'small',
          //     type: 'line',
          //     fs: 9,
          //   )
          // ],
          // if (videoItem.rcmdReason != null) ...[
          //   PBadge(
          //     text: videoItem.rcmdReason,
          //     stack: 'normal',
          //     size: 'small',
          //     type: 'color',
          //   )
          // ],
          // if (videoItem.goto == 'picture') ...[
          //   const PBadge(
          //     text: '动态',
          //     stack: 'normal',
          //     size: 'small',
          //     type: 'line',
          //     fs: 9,
          //   )
          // ],
          // if (videoItem.isFollowed == 1) ...[
          //   const PBadge(
          //     text: '已关注',
          //     stack: 'normal',
          //     size: 'small',
          //     type: 'color',
          //   )
          // ],
          // Expanded(
          //   flex: 1,
          //   child: Text(
          //     videoItem.author ?? '',
          //     // semanticsLabel: "Up主：${videoItem.owner.name}",
          //     maxLines: 1,
          //     overflow: TextOverflow.clip,
          //     style: TextStyle(
          //       height: 1.5,
          //       fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
          //       color: Theme.of(context).colorScheme.outline,
          //     ),
          //   ),
          // ),
          // if (videoItem.goto == 'av') const SizedBox(width: 10)
          // ],
          // ),
        ],
      ),
    ),
  );
}

// Widget videoStat(BuildContext context, Item videoItem) {
//   return Row(
//     children: [
//       StatView(
//         theme: 'gray',
//         view: videoItem.stat.view,
//         goto: videoItem.goto,
//       ),
//       const SizedBox(width: 6),
//       if (videoItem.goto != 'picture')
//         StatDanMu(
//           theme: 'gray',
//           danmu: videoItem.stat.danmu,
//         ),
//       if (videoItem is RecVideoItemModel) ...<Widget>[
//         const Spacer(),
//         Expanded(
//             flex: 0,
//             child: RichText(
//               maxLines: 1,
//               text: TextSpan(
//                   style: TextStyle(
//                     fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
//                     color:
//                         Theme.of(context).colorScheme.outline.withOpacity(0.8),
//                   ),
//                   text: Utils.formatTimestampToRelativeTime(videoItem.pubdate)),
//             )),
//         const SizedBox(width: 2),
//       ],
//       if (videoItem is RecVideoItemAppModel &&
//           videoItem.desc != null &&
//           videoItem.desc.contains(' · ')) ...<Widget>[
//         const Spacer(),
//         Expanded(
//             flex: 0,
//             child: RichText(
//               maxLines: 1,
//               text: TextSpan(
//                   style: TextStyle(
//                     fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
//                     color:
//                         Theme.of(context).colorScheme.outline.withOpacity(0.8),
//                   ),
//                   text: Utils.shortenChineseDateString(
//                       videoItem.desc.split(' · ').last)),
//             )),
//         const SizedBox(width: 2),
//       ]
//     ],
//   );
// }
