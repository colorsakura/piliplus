import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/segment_progress_bar.dart';
import 'package:PiliPlus/pages/common/common_slide_page.dart';
import 'package:PiliPlus/pages/video/detail/index.dart';
import 'package:PiliPlus/plugin/pl_player/index.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewPointsPage extends CommonSlidePage {
  const ViewPointsPage({
    super.key,
    super.enableSlide,
    required this.videoDetailController,
    required this.plPlayerController,
  });

  final VideoDetailController videoDetailController;
  final PlPlayerController? plPlayerController;

  @override
  State<ViewPointsPage> createState() => _ViewPointsPageState();
}

class _ViewPointsPageState extends CommonSlidePageState<ViewPointsPage> {
  late bool _isInit = true;
  VideoDetailController get videoDetailController =>
      widget.videoDetailController;
  PlPlayerController? get plPlayerController => widget.plPlayerController;

  @override
  void initState() {
    super.initState();
    if (enableSlide && GStorage.collapsibleVideoPage) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            _isInit = false;
          });
        }
      });
    }
  }

  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    if (enableSlide && GStorage.collapsibleVideoPage && _isInit) {
      return CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
      );
    }

    return enableSlide
        ? Padding(
            padding: EdgeInsets.only(top: padding),
            child: buildPage,
          )
        : buildPage;
  }

  @override
  Widget get buildPage => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 16,
          title: const Text('分段信息'),
          actions: [
            Text(
              '分段进度条',
              style: TextStyle(fontSize: 16),
            ),
            Obx(
              () => Transform.scale(
                alignment: Alignment.centerLeft,
                scale: 0.8,
                child: Switch(
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                    if (states.isNotEmpty &&
                        states.first == WidgetState.selected) {
                      return const Icon(Icons.done);
                    }
                    return null;
                  }),
                  value: videoDetailController.plPlayerController.showVP.value,
                  onChanged: (value) {
                    videoDetailController.plPlayerController.showVP.value =
                        value;
                  },
                ),
              ),
            ),
            iconButton(
              context: context,
              size: 30,
              icon: Icons.clear,
              tooltip: '关闭',
              onPressed: Get.back,
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: enableSlide ? slideList() : buildList,
      );

  @override
  Widget get buildList => ListView(
        controller: ScrollController(),
        physics: const AlwaysScrollableScrollPhysics(),
        padding:
            EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom + 80),
        children: [
          ...List.generate(
            videoDetailController.viewPointList.length * 2 - 1,
            (rawIndex) {
              if (rawIndex % 2 == 1) {
                return Divider(
                  height: 1,
                  color: Theme.of(context).dividerColor.withOpacity(0.1),
                );
              }
              int index = rawIndex ~/ 2;
              Segment segment = videoDetailController.viewPointList[index];
              if (currentIndex == -1 &&
                  segment.from != null &&
                  segment.to != null) {
                if (videoDetailController
                            .plPlayerController.positionSeconds.value >=
                        segment.from! &&
                    videoDetailController
                            .plPlayerController.positionSeconds.value <
                        segment.to!) {
                  currentIndex = index;
                }
              }
              return ListTile(
                dense: true,
                onTap: segment.from != null
                    ? () {
                        currentIndex = index;
                        plPlayerController?.danmakuController?.clear();
                        plPlayerController?.videoPlayerController
                            ?.seek(Duration(seconds: segment.from!));
                        Get.back();
                      }
                    : null,
                leading: segment.url?.isNotEmpty == true
                    ? Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        decoration: currentIndex == index
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 1.8,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              )
                            : null,
                        child: LayoutBuilder(
                          builder: (context, constraints) => NetworkImgLayer(
                            radius: 6,
                            src: segment.url,
                            width:
                                constraints.maxHeight * StyleString.aspectRatio,
                            height: constraints.maxHeight,
                          ),
                        ),
                      )
                    : null,
                title: Text(
                  segment.title ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: currentIndex == index ? FontWeight.bold : null,
                    color: currentIndex == index
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                subtitle: Text(
                  '${segment.from != null ? Utils.timeFormat(segment.from) : ''} - ${segment.to != null ? Utils.timeFormat(segment.to) : ''}',
                  style: TextStyle(
                    fontSize: 13,
                    color: currentIndex == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outline,
                  ),
                ),
              );
            },
          ),
        ],
      );
}
