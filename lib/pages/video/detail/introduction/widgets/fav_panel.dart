import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

import '../../../../../utils/utils.dart';

class FavPanel extends StatefulWidget {
  const FavPanel({
    super.key,
    this.ctr,
    this.scrollController,
  });

  final dynamic ctr;
  final ScrollController? scrollController;

  @override
  State<FavPanel> createState() => _FavPanelState();
}

class _FavPanelState extends State<FavPanel> {
  late Future _futureBuilderFuture;

  @override
  void initState() {
    super.initState();
    _futureBuilderFuture = widget.ctr!.queryVideoInFolder();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        if (notification.extent <= 1e-5) {
          Get.back();
        }
        return false;
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          children: [
            AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
              ),
              centerTitle: false,
              elevation: 0,
              leading: IconButton(
                tooltip: '关闭',
                onPressed: Get.back,
                icon: const Icon(Icons.close_outlined),
              ),
              title: Text('添加到收藏夹',
                  style: Theme.of(context).textTheme.titleMedium),
              actions: [
                TextButton.icon(
                  onPressed: () {
                    // TODO
                  },
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: const Text('新建收藏夹'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 14),
                    visualDensity: const VisualDensity(
                      horizontal: -2,
                      vertical: -2,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            Expanded(
              child: Material(
                child: FutureBuilder(
                  future: _futureBuilderFuture,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      Map data = snapshot.data as Map;
                      if (data['status']) {
                        return Obx(
                          () => ListView.builder(
                            controller: widget.scrollController,
                            itemCount:
                                widget.ctr!.favFolderData.value.list!.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                onTap: () => widget.ctr!.onChoose(
                                    widget.ctr!.favFolderData.value.list![index]
                                            .favState !=
                                        1,
                                    index),
                                dense: true,
                                leading: const Icon(Icons.folder_outlined),
                                // leading: [0, 22].contains(widget.ctr!
                                //         .favFolderData.value.list![index].attr)
                                //     ? const Icon(Icons.folder_outlined)
                                //     : const Icon(Icons.lock_outline),
                                minLeadingWidth: 0,
                                title: Text(widget.ctr!.favFolderData.value
                                    .list![index].title!),
                                subtitle: Text(
                                    '${widget.ctr!.favFolderData.value.list![index].mediaCount}个内容'),
                                // subtitle: Text(
                                //   '${widget.ctr!.favFolderData.value.list![index].mediaCount}个内容 . ${[
                                //     0,
                                //     22
                                //   ].contains(widget.ctr!.favFolderData.value.list![index].attr) ? '公开' : '私密'}',
                                // ),
                                trailing: Transform.scale(
                                  scale: 0.9,
                                  child: Checkbox(
                                    value: widget.ctr!.favFolderData.value
                                            .list![index].favState ==
                                        1,
                                    onChanged: (bool? checkValue) => widget.ctr!
                                        .onChoose(checkValue!, index),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return CustomScrollView(
                          controller: widget.scrollController,
                          slivers: [
                            HttpError(
                              errMsg: data['msg'],
                              fn: () => setState(() {
                                _futureBuilderFuture =
                                    widget.ctr!.queryVideoInFolder();
                              }),
                            )
                          ],
                        );
                      }
                    } else {
                      // 骨架屏
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Theme.of(context).disabledColor.withOpacity(0.08),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 12,
                bottom: MediaQuery.of(context).padding.bottom + 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () => Get.back(),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      visualDensity: const VisualDensity(
                        horizontal: -1,
                        vertical: -2,
                      ),
                      foregroundColor: Theme.of(context).colorScheme.outline,
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onInverseSurface, // 设置按钮背景色
                    ),
                    child: const Text('取消'),
                  ),
                  const SizedBox(width: 25),
                  FilledButton.tonal(
                    onPressed: () async {
                      feedBack();
                      await widget.ctr!.actionFavVideo();
                    },
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      visualDensity: const VisualDensity(
                        horizontal: -1,
                        vertical: -2,
                      ),
                    ),
                    child: const Text('完成'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
