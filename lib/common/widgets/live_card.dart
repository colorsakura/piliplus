import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../constants.dart';
import 'network_img_layer.dart';

class LiveCard extends StatelessWidget {
  final dynamic liveItem;

  const LiveCard({
    super.key,
    required this.liveItem,
  });

  @override
  Widget build(BuildContext context) {
    final String heroTag = Utils.makeHeroTag(liveItem.roomid);

    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: BorderSide(
          color: Theme.of(context).dividerColor.withOpacity(0.08),
        ),
      ),
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: StyleString.aspectRatio,
              child: LayoutBuilder(builder:
                  (BuildContext context, BoxConstraints boxConstraints) {
                final double maxWidth = boxConstraints.maxWidth;
                final double maxHeight = boxConstraints.maxHeight;
                return Stack(
                  children: [
                    Hero(
                      tag: heroTag,
                      child: NetworkImgLayer(
                        src: liveItem.cover as String,
                        type: 'emote',
                        width: maxWidth,
                        height: maxHeight,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: AnimatedOpacity(
                        opacity: 1,
                        duration: const Duration(milliseconds: 200),
                        child: liveStat(context),
                      ),
                    ),
                  ],
                );
              }),
            ),
            liveContent(context)
          ],
        ),
      ),
    );
  }

  Widget liveContent(context) {
    return Padding(
      // 多列
      padding: const EdgeInsets.fromLTRB(8, 8, 6, 7),
      // 单列
      // padding: const EdgeInsets.fromLTRB(14, 10, 4, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            liveItem.title as String,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              liveItem.uname as String,
              maxLines: 1,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget liveStat(context) {
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
        children: <Widget>[
          // Row(
          // children: [
          // StatView(
          //   theme: 'white',
          //   view: view,
          // ),
          // const SizedBox(width: 8),
          // StatDanMu(
          //   theme: 'white',
          //   danmu: danmaku,
          // ),
          // ],
          // ),
          Text(
            liveItem.online.toString(),
            style: const TextStyle(fontSize: 11, color: Colors.white),
          )
        ],
      ),
    );
  }
}
