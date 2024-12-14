import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/space/card.dart' as space;
import 'package:PiliPalaX/models/space/images.dart' as space;
import 'package:PiliPalaX/utils/extension.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
    required this.isV,
    required this.isOwner,
    required this.card,
    required this.images,
    required this.relation,
    required this.isFollow,
    required this.onFollow,
  });

  final bool isV;
  final bool isOwner;
  final int relation;
  final bool isFollow;
  final space.Card card;
  final space.Images images;
  final VoidCallback onFollow;

  @override
  Widget build(BuildContext context) {
    return isV ? _buildV(context) : _buildH(context);
  }

  Widget _countWidget({
    required String title,
    required int count,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Utils.numFormat(count),
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              height: 1,
              fontSize: 11,
              color: Theme.of(Get.context!).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context) {
    bool darken = Theme.of(context).brightness == Brightness.dark;
    String? imgUrl = darken
        ? (images.nightImgurl?.isEmpty == true
            ? images.imgUrl?.http2https
            : images.nightImgurl?.http2https)
        : images.imgUrl?.http2https;
    return Hero(
      tag: imgUrl ?? 'bgTag',
      child: GestureDetector(
        onTap: () {
          context.imageView(
            imgList: [imgUrl ?? 'bgTag'],
          );
        },
        child: CachedNetworkImage(
          imageUrl: imgUrl ?? '',
          width: double.infinity,
          height: 135,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  darken ? const Color(0x8D000000) : const Color(0x5DFFFFFF),
                  darken ? BlendMode.darken : BlendMode.lighten,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildLeft(BuildContext context) => [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            spacing: 5,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Utils.copyText(card.name ?? ''),
                child: Text(
                  card.name ?? '',
                  style: TextStyle(
                    height: 1,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: (card.vip?.vipStatus ?? -1) > 0 &&
                            card.vip?.vipType == 2
                        ? context.vipColor
                        : null,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/lv/lv${card.levelInfo?.currentLevel}.png',
                height: 11,
                semanticLabel: '等级${card.levelInfo?.currentLevel}',
              ),
              if (card.vip?.vipStatus == 1)
                CachedNetworkImage(
                  imageUrl: card.vip!.label!.image!,
                  height: 20,
                ),
              // if (card.nameplate?.image?.isNotEmpty == true)
              //   CachedNetworkImage(
              //     imageUrl: card.nameplate!.image!,
              //     height: 20,
              //   ),
              // GestureDetector(
              //   onTap: () {
              //     Utils.copyText(card.mid.toString());
              //   },
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 8, vertical: 2.5),
              //     decoration: BoxDecoration(
              //       color: Theme.of(context).colorScheme.secondaryContainer,
              //       borderRadius: const BorderRadius.all(Radius.circular(12)),
              //     ),
              //     child: Text(
              //       'uid: ${card.mid}',
              //       style: TextStyle(
              //         height: 1,
              //         fontSize: 12,
              //         fontWeight: FontWeight.w500,
              //         color: Theme.of(context).colorScheme.onSecondaryContainer,
              //       ),
              //       strutStyle: const StrutStyle(
              //         height: 1,
              //         leading: 0,
              //         fontSize: 12,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        if (card.officialVerify?.desc?.isNotEmpty == true)
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.onInverseSurface),
              child: Text.rich(
                TextSpan(
                  children: [
                    if (card.officialVerify?.icon?.isNotEmpty == true) ...[
                      WidgetSpan(
                        child: Container(
                          padding: const EdgeInsets.all(0.1),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: CachedNetworkImage(
                            width: 18,
                            height: 18,
                            imageUrl: card.officialVerify!.icon!,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                      )
                    ],
                    TextSpan(
                      text: card.officialVerify!.spliceTitle!,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        if (card.sign?.isNotEmpty == true)
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 6, right: 20),
            child: SelectableText(
              card.sign!.trim().replaceAll(RegExp(r'\n{2,}'), '\n'),
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6, right: 20),
          child: Wrap(
            spacing: 5,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Utils.copyText(card.mid.toString());
                },
                child: Text(
                  'UID: ${card.mid}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ),
              if (!card.spaceTag.isNullOrEmpty)
                ...card.spaceTag!.map(
                  (item) => Text(
                    item.title ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
            ],
          ),
        ),
        // if (card.spaceTagBottom != null && card.spaceTagBottom!.isNotEmpty)
        //   Padding(
        //     padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
        //     child: Wrap(
        //       spacing: 5,
        //       runSpacing: 8,
        //       children: card.spaceTagBottom!
        //           .map((item) => Text(item.title ?? ''))
        //           .toList(),
        //     ),
        //   ),
      ];

  _buildRight(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              5,
              (index) => index % 2 == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: _countWidget(
                        title: ['粉丝', '关注', '获赞'][index ~/ 2],
                        count: index == 0
                            ? card.fans
                            : index == 2
                                ? card.attention
                                : card.likes?.likeNum ?? 0,
                        onTap: () {
                          if (index == 0) {
                            Get.toNamed(
                                '/fan?mid=${card.mid}&name=${card.name}');
                          } else if (index == 2) {
                            Get.toNamed(
                                '/follow?mid=${card.mid}&name=${card.name}');
                          }
                        },
                      ),
                    )
                  : SizedBox(
                      height: 15,
                      width: 1,
                      child: VerticalDivider(),
                    ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isOwner)
                IconButton.outlined(
                  onPressed: () {
                    if (GStorage.userInfo.get('userInfoCache') != null) {
                      Get.toNamed(
                        '/whisperDetail',
                        parameters: {
                          'talkerId': card.mid ?? '',
                          'name': card.name ?? '',
                          'face': card.face ?? '',
                          'mid': card.mid ?? '',
                        },
                      );
                    }
                  },
                  icon: const Icon(Icons.mail_outline, size: 21),
                  style: IconButton.styleFrom(
                    side: BorderSide(
                      width: 1.0,
                      color: Theme.of(context)
                          .colorScheme
                          .outline
                          .withOpacity(0.5),
                    ),
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: const VisualDensity(
                      horizontal: -2,
                      vertical: -2,
                    ),
                  ),
                ),
              const SizedBox(width: 10),
              FilledButton.tonal(
                onPressed: onFollow,
                style: FilledButton.styleFrom(
                  backgroundColor: relation == -1 || isFollow
                      ? Theme.of(context).colorScheme.onInverseSurface
                      : null,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  visualDensity: const VisualDensity(
                    horizontal: -2,
                    vertical: -2,
                  ),
                ),
                child: Text.rich(
                  style: TextStyle(
                    color: relation == -1 || isFollow
                        ? Theme.of(context).colorScheme.outline
                        : null,
                  ),
                  TextSpan(
                    children: [
                      if (isFollow)
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Icon(
                            Icons.sort,
                            size: 16,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      TextSpan(
                        text: isOwner
                            ? '编辑资料'
                            : relation == -1
                                ? '移除黑名单'
                                : relation == 2
                                    ? ' 特别关注'
                                    : isFollow
                                        ? ' 已关注'
                                        : '关注',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  _buildBadge(BuildContext context) => Container(
        padding: const EdgeInsets.all(0.01),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surface,
        ),
        child: card.officialVerify?.icon?.isNotEmpty == true
            ? NetworkImgLayer(
                src: card.officialVerify?.icon,
                radius: null,
                width: 24,
                height: 24,
                quality: 100,
              )
            : Image.asset(
                'assets/images/big-vip.png',
                width: 24,
                height: 24,
              ),
      );

  _buildAvatar(BuildContext context) => Hero(
        tag: card.face ?? 'avatarTag',
        child: GestureDetector(
          onTap: () {
            context.imageView(
              imgList: [card.face ?? 'avatarTag'],
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.5,
                color: Theme.of(context).colorScheme.surface,
              ),
              shape: BoxShape.circle,
            ),
            child: NetworkImgLayer(
              src: card.face,
              type: 'avatar',
              width: 80,
              height: 80,
            ),
          ),
        ),
      );

  _buildV(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildHeader(context),
                  const SizedBox(width: double.infinity, height: 85)
                ],
              ),
              Positioned(
                top: 110,
                left: 20,
                child: _buildAvatar(context),
              ),
              if (card.officialVerify?.icon?.isNotEmpty == true ||
                  (card.vip?.vipStatus ?? -1) > 0)
                Positioned(
                  top: 170,
                  left: 80,
                  child: _buildBadge(context),
                ),
              Positioned(
                top: 140,
                right: 20,
                child: _buildRight(context),
              ),
            ],
          ),
          ..._buildLeft(context),
          const SizedBox(height: 5),
        ],
      );

  _buildH(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Row(
            children: [
              SizedBox(width: MediaQuery.paddingOf(context).left),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  children: [
                    _buildAvatar(context),
                    if (card.officialVerify?.icon?.isNotEmpty == true ||
                        (card.vip?.vipStatus ?? -1) > 0)
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: _buildBadge(context),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    ..._buildLeft(context),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              Expanded(child: _buildRight(context)),
              SizedBox(width: MediaQuery.paddingOf(context).right),
            ],
          ),
        ],
      );
}
