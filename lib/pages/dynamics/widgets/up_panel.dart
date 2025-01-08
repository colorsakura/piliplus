import 'package:PiliPlus/pages/dynamics/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/models/dynamics/up.dart';
import 'package:PiliPlus/models/live/item.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/utils.dart';

class UpPanel extends StatefulWidget {
  final DynamicsController dynamicsController;
  const UpPanel({
    required this.dynamicsController,
    super.key,
  });

  @override
  State<UpPanel> createState() => _UpPanelState();
}

class _UpPanelState extends State<UpPanel> {
  int currentMid = -1;
  List<UpItem> get upList =>
      widget.dynamicsController.upData.value.upList ?? <UpItem>[];
  List<LiveUserItem> get liveList =>
      widget.dynamicsController.upData.value.liveUsers?.items ??
      <LiveUserItem>[];
  bool _showLiveItems = false;

  @override
  Widget build(BuildContext context) {
    if (widget.dynamicsController.isLogin.value.not) {
      return const SizedBox.shrink();
    }
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: widget.dynamicsController.scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Text(
                    'Live(${liveList.length})',
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    semanticsLabel:
                        '${_showLiveItems ? '展开' : '收起'}直播中的${liveList.length}个Up',
                  ),
                  Icon(
                    _showLiveItems ? Icons.expand_less : Icons.expand_more,
                    size: 12,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  _showLiveItems = !_showLiveItems;
                });
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 10),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 76,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          delegate: SliverChildListDelegate(
            [
              if (_showLiveItems && liveList.isNotEmpty) ...[
                for (int i = 0; i < liveList.length; i++) ...[
                  upItemBuild(liveList[i], i)
                ],
              ],
              upItemBuild(UpItem(face: '', uname: '全部动态', mid: -1), 0),
              upItemBuild(
                UpItem(
                  uname: '我',
                  face: widget.dynamicsController.face,
                  mid: widget.dynamicsController.ownerMid,
                ),
                1,
              ),
              for (int i = 0; i < upList.length; i++) ...[
                upItemBuild(upList[i], i + 2)
              ],
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 200),
        ),
      ],
    );
  }

  Widget upItemBuild(data, i) {
    bool isCurrent = currentMid == data.mid || currentMid == -1;
    return InkWell(
      onTap: () {
        feedBack();
        if (data.type == 'up') {
          currentMid = data.mid;
          // dynamicsController.mid.value = data.mid;
          widget.dynamicsController
            ..upInfo.value = data
            ..onSelectUp(data.mid);
          // int liveLen = liveList.length;
          // int upLen = upList.length;
          // double itemWidth = contentWidth + itemPadding.horizontal;
          // double screenWidth = MediaQuery.sizeOf(context).width;
          // double moveDistance = 0.0;
          // if (itemWidth * (upList.length + liveList.length) <= screenWidth) {
          // } else if ((upLen - i - 0.5) * itemWidth > screenWidth / 2) {
          //   moveDistance =
          //       (i + liveLen + 0.5) * itemWidth + 46 - screenWidth / 2;
          // } else {
          //   moveDistance = (upLen + liveLen) * itemWidth + 46 - screenWidth;
          // }
          data.hasUpdate = false;
          // scrollController.animateTo(
          //   moveDistance,
          //   duration: const Duration(milliseconds: 500),
          //   curve: Curves.easeInOut,
          // );
          setState(() {});
        } else if (data.type == 'live') {
          LiveItemModel liveItem = LiveItemModel.fromJson({
            'title': data.title,
            'uname': data.uname,
            'face': data.face,
            'roomid': data.roomId,
          });
          Get.toNamed(
            '/liveRoom?roomid=${data.roomId}',
            arguments: {'liveItem': liveItem},
          );
        }
      },
      onLongPress: () {
        feedBack();
        if (data.mid == -1) {
          return;
        }
        String heroTag = Utils.makeHeroTag(data.mid);
        Get.toNamed('/member?mid=${data.mid}',
            arguments: {'face': data.face, 'heroTag': heroTag});
      },
      child: AnimatedOpacity(
        opacity: isCurrent ? 1 : 0.6,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: data.face != ''
                      ? NetworkImgLayer(
                          width: 38,
                          height: 38,
                          src: data.face,
                          type: 'avatar',
                        )
                      : const CircleAvatar(
                          radius: 19,
                          backgroundImage: AssetImage(
                            'assets/images/logo/logo_android_2.png',
                          ),
                        ),
                ),
                Positioned(
                  top: 0,
                  right: data.type == 'live' ? -6 : 4,
                  child: Badge(
                    smallSize: 8,
                    label: data.type == 'live' ? const Text(' Live ') : null,
                    textColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    alignment: AlignmentDirectional.topStart,
                    isLabelVisible: data.type == 'live' ||
                        (data.type == 'up' && (data.hasUpdate ?? false)),
                    backgroundColor: data.type == 'live'
                        ? Theme.of(context)
                            .colorScheme
                            .secondaryContainer
                            .withOpacity(0.7)
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                data.uname,
                overflow: TextOverflow.clip,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: currentMid == data.mid
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.outline,
                  height: 1.1,
                  fontSize: 12.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
//   _SliverHeaderDelegate({required this.height, required this.child});

//   final double height;
//   final Widget child;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return child;
//   }

//   @override
//   double get maxExtent => height;

//   @override
//   double get minExtent => height;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
//       true;
// }

class UpPanelSkeleton extends StatelessWidget {
  const UpPanelSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onInverseSurface,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          width: 45,
          height: 12,
          color: Theme.of(context).colorScheme.onInverseSurface,
        ),
      ],
    );
  }
}
