import 'dart:async';
import 'dart:math';

import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/stat/stat.dart';
import 'package:PiliPlus/models/common/image_preview_type.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/models/common/stat_type.dart';
import 'package:PiliPlus/models_new/pgc/pgc_info_model/result.dart';
import 'package:PiliPlus/pages/video/controller.dart';
import 'package:PiliPlus/pages/video/introduction/pgc/controller.dart';
import 'package:PiliPlus/pages/video/introduction/pgc/widgets/pgc_panel.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/widgets/action_item.dart';
import 'package:PiliPlus/utils/num_util.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PgcIntroPage extends StatefulWidget {
  final int? cid;
  final String heroTag;
  final Function showEpisodes;
  final Function showIntroDetail;

  const PgcIntroPage({
    super.key,
    this.cid,
    required this.heroTag,
    required this.showEpisodes,
    required this.showIntroDetail,
  });

  @override
  State<PgcIntroPage> createState() => _PgcIntroPageState();
}

class _PgcIntroPageState extends State<PgcIntroPage>
    with
        AutomaticKeepAliveClientMixin,
        SingleTickerProviderStateMixin,
        TripleAnimMixin {
  late PgcIntroController pgcIntroController;
  late VideoDetailController videoDetailCtr;

  bool isProcessing = false;
  Future<void> handleState(FutureOr Function() action) async {
    if (!isProcessing) {
      isProcessing = true;
      await action();
      isProcessing = false;
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    pgcIntroController = Get.put(PgcIntroController(), tag: widget.heroTag);
    videoDetailCtr = Get.find<VideoDetailController>(tag: widget.heroTag);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final ThemeData theme = Theme.of(context);
    final item = pgcIntroController.pgcItem;
    final isLandscape = context.isLandscape;
    Widget sliver = SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              _buildCover(theme, isLandscape, item),
              Expanded(child: _buildInfoPanel(isLandscape, theme, item)),
            ],
          ),
          const SizedBox(height: 6),
          // 点赞收藏转发 布局样式2
          if (pgcIntroController.isPgc)
            actionGrid(theme, item, pgcIntroController),
          // 番剧分集
          if (item.episodes?.isNotEmpty == true)
            PgcPanel(
              heroTag: widget.heroTag,
              pages: item.episodes!,
              cid: videoDetailCtr.cid.value,
              onChangeEpisode: pgcIntroController.onChangeEpisode,
              showEpisodes: widget.showEpisodes,
              newEp: item.newEp,
            ),
        ],
      ),
    );
    if (!pgcIntroController.isPgc) {
      sliver = SliverMainAxisGroup(
        slivers: [
          sliver,
          ?_buildBreif(item),
        ],
      );
    }
    return SliverPadding(
      padding:
          const EdgeInsets.all(StyleString.safeSpace) +
          const EdgeInsets.only(bottom: 50),
      sliver: sliver,
    );
  }

  Widget? _buildBreif(PgcInfoModel item) {
    final img = item.brief?.img;
    if (img != null && img.isNotEmpty) {
      return SliverLayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.crossAxisExtent;
          double padding = max(0, maxWidth - 400);
          final imgWidth = maxWidth - padding;
          padding = padding / 2;
          return SliverPadding(
            padding: EdgeInsetsGeometry.only(
              top: 10,
              left: padding,
              right: padding,
            ),
            sliver: SliverMainAxisGroup(
              slivers: img.map((e) {
                return SliverToBoxAdapter(
                  child: NetworkImgLayer(
                    radius: 0,
                    src: e.url,
                    width: imgWidth,
                    height: imgWidth * e.aspectRatio,
                  ),
                );
              }).toList(),
            ),
          );
        },
      );
    }
    return null;
  }

  Widget _buildCover(ThemeData theme, bool isLandscape, PgcInfoModel item) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () {
            videoDetailCtr.onViewImage();
            PageUtils.imageView(
              imgList: [SourceModel(url: item.cover!)],
              onDismissed: videoDetailCtr.onDismissed,
            );
          },
          child: Hero(
            tag: item.cover!,
            child: NetworkImgLayer(
              width: 115,
              height: 153,
              src: item.cover!,
              semanticsLabel: '封面',
            ),
          ),
        ),
        if (item.rating != null)
          PBadge(
            text: '评分 ${item.rating!.score!}',
            top: null,
            right: 6,
            bottom: 6,
            left: null,
          ),
        if (!pgcIntroController.isPgc)
          Positioned(
            right: 6,
            bottom: 6,
            child: Obx(() {
              final isFav = pgcIntroController.isFav.value;
              return iconButton(
                context: context,
                size: 28,
                iconSize: 26,
                tooltip: '${isFav ? '取消' : ''}收藏',
                onPressed: () => pgcIntroController.onFavPugv(isFav),
                icon: isFav ? Icons.star_rounded : Icons.star_border_rounded,
                bgColor: isFav ? null : theme.colorScheme.onInverseSurface,
                iconColor: isFav ? null : theme.colorScheme.onSurfaceVariant,
              );
            }),
          ),
      ],
    );
  }

  Widget _buildInfoPanel(bool isLandscape, ThemeData theme, PgcInfoModel item) {
    if (pgcIntroController.isPgc) {
      Widget subBtn() => Obx(
        () {
          final isFollowed = pgcIntroController.isFollowed.value;
          final followStatus = pgcIntroController.followStatus.value;
          return FilledButton.tonal(
            style: FilledButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              visualDensity: VisualDensity.compact,
              foregroundColor: isFollowed ? theme.colorScheme.outline : null,
              backgroundColor: isFollowed
                  ? theme.colorScheme.onInverseSurface
                  : null,
            ),
            onPressed: followStatus == -1
                ? null
                : () {
                    if (isFollowed) {
                      showPgcFollowDialog(
                        context: context,
                        type: pgcIntroController.pgcType,
                        followStatus: followStatus,
                        onUpdateStatus: (followStatus) {
                          if (followStatus == -1) {
                            pgcIntroController.pgcDel();
                          } else {
                            pgcIntroController.pgcUpdate(
                              followStatus,
                            );
                          }
                        },
                      );
                    } else {
                      pgcIntroController.pgcAdd();
                    }
                  },
            child: Text(
              isFollowed
                  ? '已${pgcIntroController.pgcType}'
                  : pgcIntroController.pgcType,
            ),
          );
        },
      );
      Widget title() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Expanded(
            child: Text(
              item.title!,
              style: const TextStyle(fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          subBtn(),
        ],
      );
      List<Widget> desc() => [
        Text(
          item.newEp!.desc!,
          style: TextStyle(
            fontSize: 12,
            color: theme.colorScheme.outline,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              if (item.areas?.isNotEmpty == true)
                TextSpan(text: '${item.areas!.first.name!}  '),
              TextSpan(
                text: item.publish!.pubTimeShow!,
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 12,
            color: theme.colorScheme.outline,
          ),
        ),
      ];
      Widget stat() => Wrap(
        spacing: 6,
        runSpacing: 2,
        children: [
          StatWidget(
            type: StatType.play,
            value: item.stat!.view,
          ),
          StatWidget(
            type: StatType.danmaku,
            value: item.stat!.danmaku,
          ),
          if (isLandscape) ...desc(),
        ],
      );
      return GestureDetector(
        onTap: () => widget.showIntroDetail(
          item,
          pgcIntroController.videoTags.value,
        ),
        behavior: HitTestBehavior.opaque,
        child: SizedBox(
          height: 153,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              stat(),
              const SizedBox(height: 5),
              if (!isLandscape) ...desc(),
              const SizedBox(height: 5),
              Expanded(
                child: Text(
                  '简介：${item.evaluate}',
                  style: TextStyle(
                    fontSize: 13,
                    color: theme.colorScheme.outline,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // pugv
    Widget upInfo(int mid, String avatar, String name, {String? role}) =>
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Get.toNamed('/member?mid=$mid'),
          child: Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              NetworkImgLayer(
                src: avatar,
                width: 35,
                height: 35,
                type: ImageType.avatar,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  if (role?.isNotEmpty == true)
                    Text(
                      role!,
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.outline,
                      ),
                    ),
                ],
              ),
            ],
          ),
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (item.cooperators?.isNotEmpty == true) ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 25,
              children: item.cooperators!.map((e) {
                return upInfo(e.mid!, e.avatar!, e.nickName!, role: e.role);
              }).toList(),
            ),
          ),
          const SizedBox(height: 6),
        ] else if (item.upInfo?.mid != null) ...[
          upInfo(
            item.upInfo!.mid!,
            item.upInfo!.avatar!,
            item.upInfo!.uname!,
          ),
          const SizedBox(height: 6),
        ],
        Text(
          item.title!,
          style: const TextStyle(fontSize: 16),
        ),
        if (item.subtitle?.isNotEmpty == true) ...[
          const SizedBox(height: 5),
          Text(
            item.subtitle!,
            style: TextStyle(
              fontSize: 13,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }

  Widget actionGrid(
    ThemeData theme,
    PgcInfoModel item,
    PgcIntroController pgcIntroController,
  ) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          Obx(
            () => ActionItem(
              icon: const Icon(FontAwesomeIcons.thumbsUp),
              selectIcon: const Icon(FontAwesomeIcons.solidThumbsUp),
              onTap: () => handleState(pgcIntroController.actionLikeVideo),
              onLongPress: () => handleState(pgcIntroController.actionTriple),
              selectStatus: pgcIntroController.hasLike.value,
              semanticsLabel: '点赞',
              text: NumUtil.numFormat(item.stat!.like),
              controller: animController,
              animation: animation,
              onStartTriple: onStartTriple,
              onCancelTriple: onCancelTriple,
            ),
          ),
          Obx(
            () => ActionItem(
              icon: const Icon(FontAwesomeIcons.b),
              selectIcon: const Icon(FontAwesomeIcons.b),
              onTap: () => handleState(pgcIntroController.actionCoinVideo),
              selectStatus: pgcIntroController.hasCoin,
              semanticsLabel: '投币',
              text: NumUtil.numFormat(item.stat!.coin),
              controller: animController,
              animation: animation,
            ),
          ),
          Obx(
            () => ActionItem(
              icon: const Icon(FontAwesomeIcons.star),
              selectIcon: const Icon(FontAwesomeIcons.solidStar),
              onTap: () => pgcIntroController.showFavBottomSheet(context),
              onLongPress: () => pgcIntroController.showFavBottomSheet(
                context,
                isLongPress: true,
              ),
              selectStatus: pgcIntroController.hasFav.value,
              semanticsLabel: '收藏',
              text: NumUtil.numFormat(item.stat!.favorite),
              controller: animController,
              animation: animation,
            ),
          ),
          Obx(
            () => ActionItem(
              icon: const Icon(FontAwesomeIcons.clock),
              selectIcon: const Icon(FontAwesomeIcons.solidClock),
              onTap: () => handleState(pgcIntroController.viewLater),
              selectStatus: pgcIntroController.hasLater.value,
              semanticsLabel: '再看',
              text: '再看',
            ),
          ),
          ActionItem(
            icon: const Icon(FontAwesomeIcons.shareFromSquare),
            onTap: () => pgcIntroController.actionShareVideo(context),
            selectStatus: false,
            semanticsLabel: '转发',
            text: NumUtil.numFormat(item.stat!.share),
          ),
        ],
      ),
    );
  }

  @override
  bool get hasTriple =>
      pgcIntroController.hasLike.value &&
      pgcIntroController.hasCoin &&
      pgcIntroController.hasFav.value;

  @override
  void onLike() => handleState(pgcIntroController.actionLikeVideo);

  @override
  void onTriple() => handleState(pgcIntroController.actionTriple);
}
