import 'dart:async';

import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/pages/main/index.dart';
import 'package:PiliPalaX/pages/media/index.dart';
import 'package:PiliPalaX/utils/utils.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage>
    with AutomaticKeepAliveClientMixin {
  late MediaController mediaController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    mediaController = Get.put(MediaController());
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;

    mediaController.userLogin.listen((status) {
      mediaController.onReload();
    });
    mediaController.scrollController.addListener(
      () {
        final ScrollDirection direction =
            mediaController.scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          mainStream.add(true);
        } else if (direction == ScrollDirection.reverse) {
          mainStream.add(false);
        }
      },
    );
  }

  @override
  void dispose() {
    mediaController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Color primary = Theme.of(context).colorScheme.primary;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness:
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        controller: mediaController.scrollController,
        child: Column(
          children: [
            ListTile(
                leading: null,
                title: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '媒体库',
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                trailing: IconButton(
                  tooltip: '设置',
                  onPressed: () {
                    Get.toNamed('/setting');
                  },
                  icon: const Icon(
                    Icons.settings_outlined,
                    size: 20,
                  ),
                )),
            for (var i in mediaController.list) ...[
              ListTile(
                onTap: () => i['onTap'](),
                dense: true,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    i['icon'],
                    color: primary,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.only(left: 15, top: 2, bottom: 2),
                minLeadingWidth: 0,
                title: Text(
                  i['title'],
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ],
            Obx(() => mediaController.userLogin.value
                ? favFolder(mediaController, context)
                : const SizedBox(height: 0))
          ],
        ),
      ),
    );
  }

  Widget favFolder(mediaController, context) {
    return Column(
      children: [
        Divider(
          height: 20,
          color: Theme.of(context).dividerColor.withOpacity(0.1),
        ),
        ListTile(
          onTap: () async {
            await Get.toNamed('/fav');
            Future.delayed(const Duration(milliseconds: 150), () {
              mediaController.onRefresh();
            });
          },
          leading: null,
          dense: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Obx(
              () => Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '我的收藏  ',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleMedium!.fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                    if (mediaController.count.value != -1)
                      TextSpan(
                        text: "${mediaController.count.value}  ",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    WidgetSpan(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    )),
                  ],
                ),
              ),
            ),
          ),
          trailing: IconButton(
            tooltip: '刷新',
            onPressed: mediaController.onReload,
            icon: const Icon(
              Icons.refresh,
              size: 20,
            ),
          ),
        ),
        // const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.textScalerOf(context).scale(200),
          child: Obx(() => _buildBody(mediaController.loadingState.value)),
        ),
      ],
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    if (loadingState is Success) {
      List favFolderList = loadingState.response.list;
      int favFolderCount = loadingState.response.count;
      bool flag = favFolderCount > favFolderList.length;
      return ListView.builder(
        itemCount: loadingState.response.list.length + (flag ? 1 : 0),
        itemBuilder: (context, index) {
          if (flag && index == favFolderList.length) {
            return Padding(
              padding: const EdgeInsets.only(right: 14, bottom: 35),
              child: Center(
                child: IconButton(
                  tooltip: '查看更多',
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      return Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.5);
                    }),
                  ),
                  onPressed: () async {
                    await Get.toNamed('/fav');
                    Future.delayed(const Duration(milliseconds: 150), () {
                      mediaController.onRefresh();
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            );
          } else {
            String heroTag =
                Utils.makeHeroTag(loadingState.response.list[index].fid);
            return FavFolderItem(
              heroTag: heroTag,
              item: loadingState.response.list[index],
              index: index,
              onTap: () async {
                await Get.toNamed(
                  '/favDetail',
                  arguments: loadingState.response.list[index],
                  parameters: {
                    'mediaId': loadingState.response.list[index].id.toString(),
                    'heroTag': heroTag,
                  },
                );
                Future.delayed(const Duration(milliseconds: 150), () {
                  mediaController.onRefresh();
                });
              },
            );
          }
        },
        scrollDirection: Axis.horizontal,
      );
    }
    if (loadingState is Error) {
      return SizedBox(
        height: 160,
        child: Center(child: Text(loadingState.errMsg)),
      );
    }
    return const SizedBox();
  }
}

class FavFolderItem extends StatelessWidget {
  const FavFolderItem({
    super.key,
    this.item,
    this.index,
    required this.onTap,
    required this.heroTag,
  });

  final FavFolderItemData? item;
  final int? index;
  final GestureTapCallback onTap;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 14),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Container(
              width: 180,
              height: 110,
              margin: const EdgeInsets.only(bottom: 8),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context)
                    .colorScheme
                    .onInverseSurface
                    .withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onInverseSurface
                        .withOpacity(0.4),
                    offset: const Offset(4, -12), // 阴影与容器的距离
                    blurRadius: 0.0, // 高斯的标准偏差与盒子的形状卷积。
                    spreadRadius: 0.0, // 在应用模糊之前，框应该膨胀的量。
                  ),
                ],
              ),
              child: LayoutBuilder(
                builder: (context, BoxConstraints box) {
                  return Hero(
                    tag: heroTag,
                    child: NetworkImgLayer(
                      src: item!.cover,
                      width: box.maxWidth,
                      height: box.maxHeight,
                    ),
                  );
                },
              ),
            ),
            Text(
              ' ${item!.title}',
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
            Text(
              ' 共${item!.mediaCount}条视频 · ${Utils.isPublicText(item?.attr ?? 0)}',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Theme.of(context).colorScheme.outline),
            )
          ],
        ),
      ),
    );
  }
}
