import 'package:PiliPalaX/common/widgets/self_sized_horizontal_list.dart';
import 'package:PiliPalaX/pages/search/widgets/search_text.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/pages/mine/controller.dart';
import 'package:PiliPalaX/pages/video/detail/index.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/common/widgets/stat/danmu.dart';
import 'package:PiliPalaX/common/widgets/stat/view.dart';
import 'package:PiliPalaX/models/video_detail_res.dart';
import 'package:PiliPalaX/pages/video/detail/introduction/controller.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'widgets/action_item.dart';
import 'widgets/action_row_item.dart';
import 'widgets/fav_panel.dart';
import 'widgets/page.dart';
import 'widgets/season.dart';

class VideoIntroPanel extends StatefulWidget {
  const VideoIntroPanel({
    super.key,
    required this.heroTag,
    required this.showAiBottomSheet,
    required this.showIntroDetail,
    required this.showEpisodes,
  });
  final String heroTag;
  final Function showAiBottomSheet;
  final Function showIntroDetail;
  final Function showEpisodes;

  @override
  State<VideoIntroPanel> createState() => _VideoIntroPanelState();
}

class _VideoIntroPanelState extends State<VideoIntroPanel>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  late String heroTag;
  late VideoIntroController videoIntroController;
  VideoDetailData? videoDetail;
  // late Future? _futureBuilderFuture;

  // 添加页面缓存
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    /// fix 全屏时参数丢失
    // if (Get.arguments != null) {
    //   heroTag = Get.arguments['heroTag'];
    // }
    heroTag = widget.heroTag;
    videoIntroController = Get.put(VideoIntroController(), tag: heroTag)
      ..heroTag = heroTag;
    // _futureBuilderFuture = videoIntroController.queryVideoIntro();
    videoIntroController.videoDetail.listen((value) {
      videoDetail = value;
    });
  }

  @override
  void dispose() {
    videoIntroController.onClose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Obx(() => videoIntroController.videoDetail.value.title == null
        ? VideoInfo(
            loadingStatus: true,
            videoDetail: videoDetail,
            heroTag: heroTag,
            showAiBottomSheet: widget.showAiBottomSheet,
            showIntroDetail: () => widget.showIntroDetail(
              videoDetail,
              videoIntroController.videoTags,
            ),
            showEpisodes: widget.showEpisodes,
          )
        : VideoInfo(
            //key:herotag
            key: ValueKey(heroTag),
            loadingStatus: false,
            videoDetail: videoIntroController.videoDetail.value,
            heroTag: heroTag,
            showAiBottomSheet: widget.showAiBottomSheet,
            showIntroDetail: () => widget.showIntroDetail(
              videoIntroController.videoDetail.value,
              videoIntroController.videoTags,
            ),
            showEpisodes: widget.showEpisodes,
          ));
  }
}

class VideoInfo extends StatefulWidget {
  final bool loadingStatus;
  final VideoDetailData? videoDetail;
  final String? heroTag;
  final Function showAiBottomSheet;
  final Function showIntroDetail;
  final Function showEpisodes;

  const VideoInfo({
    super.key,
    this.loadingStatus = false,
    this.videoDetail,
    this.heroTag,
    required this.showAiBottomSheet,
    required this.showIntroDetail,
    required this.showEpisodes,
  });

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> with TickerProviderStateMixin {
  // final String heroTag = Get.arguments['heroTag'];
  late String heroTag;
  late final VideoIntroController videoIntroController;
  late final VideoDetailController videoDetailCtr;
  late final Map<dynamic, dynamic> videoItem;

  final Box<dynamic> setting = GStorage.setting;

  late final bool loadingStatus; // 加载状态

  late String memberHeroTag;
  late bool enableAi;
  bool isProcessing = false;
  void Function()? handleState(Future Function() action) {
    return isProcessing
        ? null
        : () async {
            setState(() => isProcessing = true);
            await action();
            setState(() => isProcessing = false);
          };
  }

  late final _coinKey = GlobalKey<ActionItemState>();
  late final _favKey = GlobalKey<ActionItemState>();
  final _expandableCtr = ExpandableController(initialExpanded: false);

  @override
  void initState() {
    super.initState();
    heroTag = widget.heroTag!;
    videoIntroController = Get.put(VideoIntroController(), tag: heroTag);
    videoDetailCtr = Get.find<VideoDetailController>(tag: heroTag);
    videoItem = videoIntroController.videoItem!;

    loadingStatus = widget.loadingStatus;
    enableAi = setting.get(SettingBoxKey.enableAi, defaultValue: true);
  }

  @override
  void dispose() {
    _expandableCtr.dispose();
    super.dispose();
  }

  void _showFavBottomSheet() => showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        transitionAnimationController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        ),
        sheetAnimationStyle: AnimationStyle(curve: Curves.ease),
        builder: (BuildContext context) {
          return DraggableScrollableSheet(
            minChildSize: 0,
            maxChildSize: 1,
            initialChildSize: 0.7,
            snap: true,
            expand: false,
            snapSizes: const [0.7],
            builder: (BuildContext context, ScrollController scrollController) {
              return FavPanel(
                ctr: videoIntroController,
                scrollController: scrollController,
              );
            },
          );
        },
      );

  // 收藏
  showFavBottomSheet({type = 'tap'}) {
    if (videoIntroController.userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    final bool enableDragQuickFav =
        setting.get(SettingBoxKey.enableQuickFav, defaultValue: false);
    // 快速收藏 &
    // 点按 收藏至默认文件夹
    // 长按选择文件夹
    if (enableDragQuickFav) {
      if (type == 'tap') {
        videoIntroController.actionFavVideo(type: 'default');
      } else {
        _showFavBottomSheet();
      }
    } else if (type != 'longPress') {
      _showFavBottomSheet();
    }
  }

  // 视频介绍
  showIntroDetail() {
    if (loadingStatus) {
      return;
    }
    feedBack();
    // widget.showIntroDetail();
    _expandableCtr.toggle();
  }

  // 用户主页
  onPushMember() {
    feedBack();
    int? mid = !loadingStatus
        ? widget.videoDetail?.owner?.mid
        : videoItem['owner']?.mid;
    if (mid != null) {
      memberHeroTag = Utils.makeHeroTag(mid);
      String face = !loadingStatus
          ? widget.videoDetail!.owner!.face
          : videoItem['owner'].face;
      Get.toNamed('/member?mid=$mid',
          arguments: {'face': face, 'heroTag': memberHeroTag});
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData t = Theme.of(context);
    return SliverLayoutBuilder(
      builder: (BuildContext context, SliverConstraints constraints) {
        bool isHorizontal = constraints.crossAxisExtent >
            constraints.viewportMainAxisExtent * 1.25;
        return SliverPadding(
          padding: const EdgeInsets.only(
              left: StyleString.safeSpace,
              right: StyleString.safeSpace,
              top: 10),
          sliver: SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: videoItem['staff'] == null
                        ? GestureDetector(
                            onTap: onPushMember,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  NetworkImgLayer(
                                    type: 'avatar',
                                    src: loadingStatus
                                        ? videoItem['owner']?.face ?? ""
                                        : widget.videoDetail!.owner!.face,
                                    width: 30,
                                    height: 30,
                                    fadeInDuration: Duration.zero,
                                    fadeOutDuration: Duration.zero,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          loadingStatus
                                              ? videoItem['owner']?.name ?? ""
                                              : widget.videoDetail!.owner!.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: t.colorScheme.primary),
                                          // semanticsLabel: "UP主：${owner.name}",
                                        ),
                                        const SizedBox(height: 0),
                                        Obx(
                                          () => Text(
                                            '${Utils.numFormat(videoIntroController.userStat.value['follower'])}粉丝',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: t.colorScheme.outline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  followButton(context, t),
                                ],
                              ),
                            ),
                          )
                        : SelfSizedHorizontalList(
                            gapSize: 10,
                            itemCount: videoItem['staff'].length,
                            childBuilder: (index) => Container(
                              width: 80,
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () => Get.toNamed(
                                    '/member?mid=${videoItem['staff'][index].mid}',
                                    arguments: {
                                      'face': videoItem['staff'][index].face,
                                      heroTag: Utils.makeHeroTag(
                                          videoItem['staff'][index].mid),
                                    }),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    NetworkImgLayer(
                                      type: 'avatar',
                                      src: videoItem['staff'][index].face,
                                      width: 40,
                                      height: 40,
                                      fadeInDuration: Duration.zero,
                                      fadeOutDuration: Duration.zero,
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      videoItem['staff'][index].name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: videoItem['staff'][index]
                                                        .vip
                                                        .status >
                                                    0 &&
                                                videoItem['staff'][index]
                                                        .vip
                                                        .type ==
                                                    2
                                            ? Utils.vipColor
                                            : null,
                                      ),
                                    ),
                                    Text(
                                      videoItem['staff'][index].title,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ),
                  if (isHorizontal) ...[
                    const SizedBox(width: 10),
                    Expanded(child: actionGrid(context, videoIntroController)),
                  ]
                ],
              ),
              const SizedBox(height: 8),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: showIntroDetail,
                child: ExpandablePanel(
                  controller: _expandableCtr,
                  collapsed: GestureDetector(
                    onLongPress: () {
                      feedBack();
                      Utils.copyText(
                          '${widget.videoDetail?.title ?? videoItem['title'] ?? ''}');
                    },
                    child: Text(
                      '${widget.videoDetail?.title ?? videoItem['title'] ?? ''}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  expanded: GestureDetector(
                    onLongPress: () {
                      feedBack();
                      Utils.copyText(
                          '${widget.videoDetail?.title ?? videoItem['title'] ?? ''}');
                    },
                    child: Text(
                      widget.videoDetail?.title ?? videoItem['title'] ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  theme: const ExpandableThemeData(
                    animationDuration: Duration(milliseconds: 300),
                    scrollAnimationDuration: Duration(milliseconds: 300),
                    crossFadePoint: 0,
                    fadeCurve: Curves.ease,
                    sizeCurve: Curves.linear,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Stack(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: showIntroDetail,
                    child: Row(
                      children: <Widget>[
                        statView(
                          context: context,
                          theme: 'gray',
                          view: !loadingStatus
                              ? widget.videoDetail?.stat?.view ?? '-'
                              : videoItem['stat']?.view ?? '-',
                          size: 'medium',
                        ),
                        const SizedBox(width: 10),
                        statDanMu(
                          context: context,
                          theme: 'gray',
                          danmu: !loadingStatus
                              ? widget.videoDetail?.stat?.danmu ?? '-'
                              : videoItem['stat']?.danmu ?? '-',
                          size: 'medium',
                        ),
                        const SizedBox(width: 10),
                        Text(
                          Utils.dateFormat(
                              !loadingStatus
                                  ? widget.videoDetail?.pubdate
                                  : videoItem['pubdate'],
                              formatType: 'detail'),
                          style: TextStyle(
                            fontSize: 12,
                            color: t.colorScheme.outline,
                          ),
                        ),
                        if (MineController.anonymity) ...<Widget>[
                          const SizedBox(width: 10),
                          Icon(
                            MdiIcons.incognito,
                            size: 15,
                            color: t.colorScheme.outline,
                            semanticLabel: '无痕',
                          ),
                        ],
                        const SizedBox(width: 10),
                        if (videoIntroController.isShowOnlineTotal)
                          Obx(
                            () => Text(
                              '${videoIntroController.total.value}人在看',
                              style: TextStyle(
                                fontSize: 12,
                                color: t.colorScheme.outline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (enableAi)
                    Positioned(
                      right: 10,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Semantics(
                          label: 'AI总结',
                          child: GestureDetector(
                            onTap: () async {
                              final res =
                                  await videoIntroController.aiConclusion();
                              if (res['status']) {
                                widget.showAiBottomSheet();
                              }
                            },
                            child:
                                Image.asset('assets/images/ai.png', height: 22),
                          ),
                        ),
                      ),
                    )
                ],
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: showIntroDetail,
                child: ExpandablePanel(
                  controller: _expandableCtr,
                  collapsed: const SizedBox.shrink(),
                  expanded: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Utils.copyText(
                              '${videoIntroController.videoDetail.value.bvid}');
                        },
                        child: Text(
                          '${videoIntroController.videoDetail.value.bvid}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      if (videoIntroController
                          .videoDetail.value.descV2.isNullOrEmpty.not) ...[
                        const SizedBox(height: 8),
                        SelectableText.rich(
                          style: const TextStyle(
                            height: 1.4,
                            // fontSize: 13,
                          ),
                          TextSpan(
                            children: [
                              buildContent(context,
                                  videoIntroController.videoDetail.value),
                            ],
                          ),
                        ),
                      ],
                      if (videoIntroController.videoTags is List &&
                          videoIntroController.videoTags.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (videoIntroController.videoTags as List)
                              .map(
                                (item) => SearchText(
                                  fontSize: 13,
                                  searchText: item['tag_name'],
                                  onSelect: (_) => Get.toNamed('/searchResult',
                                      parameters: {
                                        'keyword': item['tag_name']
                                      }),
                                  onLongSelect: (_) =>
                                      Utils.copyText(item['tag_name']),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ],
                  ),
                  theme: const ExpandableThemeData(
                    animationDuration: Duration(milliseconds: 300),
                    scrollAnimationDuration: Duration(milliseconds: 300),
                    crossFadePoint: 0,
                    fadeCurve: Curves.ease,
                    sizeCurve: Curves.linear,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => videoIntroController.queryVideoIntroData.value["status"]
                    ? const SizedBox()
                    : Center(
                        child: TextButton.icon(
                          icon: const Icon(Icons.refresh),
                          onPressed: () {
                            videoIntroController
                                .queryVideoIntroData.value["status"] = true;
                            videoIntroController.queryVideoIntro();
                          },
                          label: const Text("点此重新加载"),
                        ),
                      ),
              ),
              // 点赞收藏转发 布局样式1
              // SingleChildScrollView(
              //   padding: const EdgeInsets.only(top: 7, bottom: 7),
              //   scrollDirection: Axis.horizontal,
              //   child: actionRow(
              //     context,
              //     videoIntroController,
              //     videoDetailCtr,
              //   ),
              // ),
              // 点赞收藏转发 布局样式2
              if (!isHorizontal) actionGrid(context, videoIntroController),
              // 合集
              if (!loadingStatus && widget.videoDetail?.ugcSeason != null) ...[
                Obx(
                  () => SeasonPanel(
                    heroTag: heroTag,
                    ugcSeason: widget.videoDetail!.ugcSeason!,
                    cid: videoIntroController.lastPlayCid.value != 0
                        ? (widget.videoDetail!.pages?.isNotEmpty == true
                            ? widget.videoDetail!.pages!.first.cid
                            : videoIntroController.lastPlayCid.value)
                        : widget.videoDetail!.pages!.first.cid,
                    changeFuc: videoIntroController.changeSeasonOrbangu,
                    showEpisodes: widget.showEpisodes,
                    pages: widget.videoDetail!.pages,
                  ),
                )
              ],
              if (!loadingStatus &&
                  widget.videoDetail?.pages != null &&
                  widget.videoDetail!.pages!.length > 1) ...[
                Obx(
                  () => PagesPanel(
                    heroTag: heroTag,
                    pages: widget.videoDetail!.pages!,
                    cid: videoIntroController.lastPlayCid.value,
                    bvid: videoIntroController.bvid,
                    changeFuc: videoIntroController.changeSeasonOrbangu,
                    showEpisodes: widget.showEpisodes,
                  ),
                ),
              ],
            ],
          )),
        );
      },
    );
  }

  Obx followButton(BuildContext context, ThemeData t) {
    return Obx(
      () {
        int attr = videoIntroController.followStatus['attribute'] ?? 0;
        return TextButton(
          onPressed: () => videoIntroController.actionRelationMod(context),
          style: TextButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
            foregroundColor:
                attr != 0 ? t.colorScheme.outline : t.colorScheme.onPrimary,
            backgroundColor: attr != 0
                ? t.colorScheme.onInverseSurface
                : t.colorScheme.primary, // 设置按钮背景色
          ),
          child: Text(
            attr == 128
                ? '已拉黑'
                : attr != 0
                    ? '已关注'
                    : '关注',
            style: TextStyle(fontSize: t.textTheme.labelMedium!.fontSize),
          ),
        );
      },
    );
  }

  Widget actionGrid(BuildContext context, videoIntroController) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        margin: const EdgeInsets.only(top: 1),
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Obx(
              () => ActionItem(
                icon: const Icon(FontAwesomeIcons.thumbsUp),
                selectIcon: const Icon(FontAwesomeIcons.solidThumbsUp),
                onTap: handleState(videoIntroController.actionLikeVideo),
                onLongPress: handleState(videoIntroController.actionOneThree),
                selectStatus: videoIntroController.hasLike.value,
                loadingStatus: loadingStatus,
                semanticsLabel: '点赞',
                text: !loadingStatus
                    ? Utils.numFormat(widget.videoDetail!.stat!.like!)
                    : '-',
                needAnim: true,
                hasOneThree: videoIntroController.hasLike.value &&
                    videoIntroController.hasCoin.value &&
                    videoIntroController.hasFav.value,
                callBack: (start) {
                  if (start) {
                    _coinKey.currentState?.controller?.forward();
                    _favKey.currentState?.controller?.forward();
                  } else {
                    _coinKey.currentState?.controller?.reverse();
                    _favKey.currentState?.controller?.reverse();
                  }
                },
              ),
            ),
            Obx(
              () => ActionItem(
                  icon: const Icon(FontAwesomeIcons.thumbsDown),
                  selectIcon: const Icon(FontAwesomeIcons.solidThumbsDown),
                  onTap: handleState(videoIntroController.actionDislikeVideo),
                  selectStatus: videoIntroController.hasDislike.value,
                  loadingStatus: loadingStatus,
                  semanticsLabel: '点踩',
                  text: "点踩"),
            ),
            // ActionItem(
            //     icon: const Icon(FontAwesomeIcons.clock),
            //     onTap: () => videoIntroController.actionShareVideo(),
            //     selectStatus: false,
            //     loadingStatus: loadingStatus,
            //     text: '稍后再看'),
            Obx(
              () => ActionItem(
                key: _coinKey,
                icon: const Icon(FontAwesomeIcons.b),
                selectIcon: const Icon(FontAwesomeIcons.b),
                onTap: handleState(videoIntroController.actionCoinVideo),
                selectStatus: videoIntroController.hasCoin.value,
                loadingStatus: loadingStatus,
                semanticsLabel: '投币',
                text: !loadingStatus
                    ? Utils.numFormat(widget.videoDetail!.stat!.coin!)
                    : '-',
                needAnim: true,
              ),
            ),
            Obx(
              () => ActionItem(
                key: _favKey,
                icon: const Icon(FontAwesomeIcons.star),
                selectIcon: const Icon(FontAwesomeIcons.solidStar),
                onTap: () => showFavBottomSheet(),
                onLongPress: () => showFavBottomSheet(type: 'longPress'),
                selectStatus: videoIntroController.hasFav.value,
                loadingStatus: loadingStatus,
                semanticsLabel: '收藏',
                text: !loadingStatus
                    ? Utils.numFormat(widget.videoDetail!.stat!.favorite!)
                    : '-',
                needAnim: true,
              ),
            ),
            ActionItem(
                icon: const Icon(FontAwesomeIcons.comment),
                onTap: () => videoDetailCtr.tabCtr
                    .animateTo(videoDetailCtr.tabCtr.index == 1 ? 0 : 1),
                selectStatus: false,
                loadingStatus: loadingStatus,
                semanticsLabel: '评论',
                text: !loadingStatus
                    ? Utils.numFormat(widget.videoDetail!.stat!.reply!)
                    : '评论'),
            ActionItem(
                icon: const Icon(FontAwesomeIcons.shareFromSquare),
                onTap: () => videoIntroController.actionShareVideo(),
                selectStatus: false,
                loadingStatus: loadingStatus,
                semanticsLabel: '分享',
                text: !loadingStatus
                    ? Utils.numFormat(widget.videoDetail!.stat!.share!)
                    : '分享'),
          ],
        ),
      );
    });
  }

  Widget actionRow(BuildContext context, videoIntroController, videoDetailCtr) {
    return Row(children: <Widget>[
      Obx(
        () => ActionRowItem(
          icon: const Icon(FontAwesomeIcons.thumbsUp),
          onTap: handleState(videoIntroController.actionLikeVideo),
          selectStatus: videoIntroController.hasLike.value,
          loadingStatus: loadingStatus,
          text:
              !loadingStatus ? widget.videoDetail!.stat!.like!.toString() : '-',
        ),
      ),
      const SizedBox(width: 8),
      Obx(
        () => ActionRowItem(
          icon: const Icon(FontAwesomeIcons.b),
          onTap: handleState(videoIntroController.actionCoinVideo),
          selectStatus: videoIntroController.hasCoin.value,
          loadingStatus: loadingStatus,
          text:
              !loadingStatus ? widget.videoDetail!.stat!.coin!.toString() : '-',
        ),
      ),
      const SizedBox(width: 8),
      Obx(
        () => ActionRowItem(
          icon: const Icon(FontAwesomeIcons.heart),
          onTap: () => showFavBottomSheet(),
          onLongPress: () => showFavBottomSheet(type: 'longPress'),
          selectStatus: videoIntroController.hasFav.value,
          loadingStatus: loadingStatus,
          text: !loadingStatus
              ? widget.videoDetail!.stat!.favorite!.toString()
              : '-',
        ),
      ),
      const SizedBox(width: 8),
      ActionRowItem(
        icon: const Icon(FontAwesomeIcons.comment),
        onTap: () {
          videoDetailCtr.tabCtr.animateTo(1);
        },
        selectStatus: false,
        loadingStatus: loadingStatus,
        text:
            !loadingStatus ? widget.videoDetail!.stat!.reply!.toString() : '-',
      ),
      const SizedBox(width: 8),
      ActionRowItem(
          icon: const Icon(FontAwesomeIcons.share),
          onTap: () => videoIntroController.actionShareVideo(),
          selectStatus: false,
          loadingStatus: loadingStatus,
          // text: !loadingStatus
          //     ? widget.videoDetail!.stat!.share!.toString()
          //     : '-',
          text: '转发'),
    ]);
  }

  InlineSpan buildContent(BuildContext context, VideoDetailData content) {
    final List descV2 = content.descV2!;
    // type
    // 1 普通文本
    // 2 @用户
    final List<TextSpan> spanChildren = List.generate(descV2.length, (index) {
      final currentDesc = descV2[index];
      switch (currentDesc.type) {
        case 1:
          final List<InlineSpan> spanChildren = <InlineSpan>[];
          final RegExp urlRegExp = RegExp(r'https?://\S+\b');
          final Iterable<Match> matches =
              urlRegExp.allMatches(currentDesc.rawText);

          int previousEndIndex = 0;
          for (final Match match in matches) {
            if (match.start > previousEndIndex) {
              spanChildren.add(TextSpan(
                  text: currentDesc.rawText
                      .substring(previousEndIndex, match.start)));
            }
            spanChildren.add(
              TextSpan(
                text: match.group(0),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary), // 设置颜色为蓝色
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // 处理点击事件
                    try {
                      Get.toNamed(
                        '/webviewnew',
                        parameters: {
                          'url': match.group(0)!,
                          'type': 'url',
                          'pageTitle': match.group(0)!,
                        },
                      );
                    } catch (err) {
                      SmartDialog.showToast(err.toString());
                    }
                  },
              ),
            );
            previousEndIndex = match.end;
          }

          if (previousEndIndex < currentDesc.rawText.length) {
            spanChildren.add(TextSpan(
                text: currentDesc.rawText.substring(previousEndIndex)));
          }

          final TextSpan result = TextSpan(children: spanChildren);
          return result;
        case 2:
          final Color colorSchemePrimary =
              Theme.of(context).colorScheme.primary;
          final String heroTag = Utils.makeHeroTag(currentDesc.bizId);
          return TextSpan(
            text: '@${currentDesc.rawText}',
            style: TextStyle(color: colorSchemePrimary),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(
                  '/member?mid=${currentDesc.bizId}',
                  arguments: {'face': '', 'heroTag': heroTag},
                );
              },
          );
        default:
          return const TextSpan();
      }
    });
    return TextSpan(children: spanChildren);
  }
}
