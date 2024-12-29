import 'package:PiliPalaX/common/widgets/image_save.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/utils/utils.dart';

import '../../../utils/grid.dart';

Widget searchLivePanel(BuildContext context, ctr, LoadingState loadingState) {
  return switch (loadingState) {
    Loading() => loadingWidget,
    Success() => (loadingState.response as List?)?.isNotEmpty == true
        ? GridView.builder(
            padding: EdgeInsets.only(
              left: StyleString.safeSpace,
              right: StyleString.safeSpace,
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            primary: false,
            controller: ctr!.scrollController,
            gridDelegate: SliverGridDelegateWithExtentAndRatio(
              maxCrossAxisExtent: Grid.maxRowWidth,
              crossAxisSpacing: StyleString.safeSpace,
              mainAxisSpacing: StyleString.safeSpace,
              childAspectRatio: StyleString.aspectRatio,
              mainAxisExtent: MediaQuery.textScalerOf(context).scale(80),
            ),
            itemCount: loadingState.response.length,
            itemBuilder: (context, index) {
              if (index == loadingState.response.length - 1) {
                ctr.onLoadMore();
              }
              return LiveItem(liveItem: loadingState.response[index]);
            },
          )
        : errorWidget(
            callback: ctr.onReload,
          ),
    Error() => errorWidget(
        errMsg: loadingState.errMsg,
        callback: ctr.onReload,
      ),
    LoadingState() => throw UnimplementedError(),
  };
}

class LiveItem extends StatelessWidget {
  final dynamic liveItem;
  const LiveItem({super.key, required this.liveItem});

  @override
  Widget build(BuildContext context) {
    String heroTag = Utils.makeHeroTag(liveItem.roomid);
    return Card(
      elevation: 1,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () async {
          Get.toNamed('/liveRoom?roomid=${liveItem.roomid}',
              arguments: {'liveItem': liveItem, 'heroTag': heroTag});
        },
        onLongPress: () => imageSaveDialog(
          context: context,
          title:
              (liveItem.title as List?)?.map((item) => item['text']).join() ??
                  '',
          cover: liveItem.cover,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: StyleString.imgRadius,
                topRight: StyleString.imgRadius,
                bottomLeft: StyleString.imgRadius,
                bottomRight: StyleString.imgRadius,
              ),
              child: AspectRatio(
                aspectRatio: StyleString.aspectRatio,
                child: LayoutBuilder(builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    children: [
                      NetworkImgLayer(
                        src: liveItem.cover,
                        type: 'emote',
                        width: maxWidth,
                        height: maxHeight,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 200),
                          child: LiveStat(
                            online: liveItem.online,
                            cateName: liveItem.cateName,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            LiveContent(liveItem: liveItem)
          ],
        ),
      ),
    );
  }
}

class LiveContent extends StatelessWidget {
  final dynamic liveItem;
  const LiveContent({super.key, required this.liveItem});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(9, 8, 9, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  for (var i in liveItem.title) ...[
                    TextSpan(
                      text: i['text'],
                      style: TextStyle(
                        letterSpacing: 0.3,
                        color: i['type'] == 'em'
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ]
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                liveItem.uname,
                maxLines: 1,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LiveStat extends StatelessWidget {
  final int? online;
  final String? cateName;

  const LiveStat({super.key, required this.online, this.cateName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(top: 22, left: 8, right: 8),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            Colors.black54,
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cateName!,
            style: const TextStyle(fontSize: 11, color: Colors.white),
          ),
          Text(
            '围观:${online.toString()}',
            style: const TextStyle(fontSize: 11, color: Colors.white),
          )
        ],
      ),
    );
  }
}
