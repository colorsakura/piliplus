import 'package:PiliPlus/build_config.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/dynamics/widgets/vote.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

Widget addWidget(
    ThemeData theme, DynamicItemModel item, BuildContext context, type,
    {floor = 1}) {
  late final Color bgColor = floor == 1
      ? theme.dividerColor.withValues(alpha: 0.08)
      : theme.colorScheme.surface;
  try {
    switch (type) {
      // 转发的投稿
      case 'ADDITIONAL_TYPE_UGC':
        final ugc = item.modules.moduleDynamic!.additional!.ugc!;
        final borderRadius = floor == 1 ? null : StyleString.mdRadius;
        return Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Material(
            borderRadius: borderRadius,
            color: bgColor,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: ugc.jumpUrl == null
                  ? null
                  : () {
                      PiliScheme.routePushFromUrl(ugc.jumpUrl!);
                    },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    NetworkImgLayer(
                      width: 120,
                      height: 75,
                      src: ugc.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ugc.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            ugc.descSecond!,
                            style: TextStyle(
                              color: theme.colorScheme.outline,
                              fontSize: theme.textTheme.labelMedium!.fontSize,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

      case 'ADDITIONAL_TYPE_RESERVE':
        final reserve = item.modules.moduleDynamic!.additional!.reserve!;
        late final borderRadius = floor == 1 ? null : StyleString.mdRadius;
        return reserve.state != -1
            ? reserve.title != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Material(
                      color: bgColor,
                      borderRadius: borderRadius,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: borderRadius,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      reserve.title!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 1),
                                    Text.rich(
                                      TextSpan(
                                        style: TextStyle(
                                          color: theme.colorScheme.outline,
                                          fontSize: theme
                                              .textTheme.labelMedium!.fontSize,
                                        ),
                                        children: [
                                          if (reserve.desc1 != null)
                                            TextSpan(text: reserve.desc1!.text),
                                          const TextSpan(text: '  '),
                                          if (reserve.desc2 != null)
                                            TextSpan(text: reserve.desc2!.text),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              if (reserve.button != null)
                                Builder(
                                  builder: (context) {
                                    final btn = reserve.button!;
                                    final isReserved = btn.status == btn.type;
                                    final bool canJump = btn.jumpUrl != null;
                                    return FilledButton.tonal(
                                      style: FilledButton.styleFrom(
                                        foregroundColor: canJump
                                            ? null
                                            : isReserved
                                                ? theme.colorScheme.onSurface
                                                    .withValues(alpha: 0.38)
                                                : null,
                                        backgroundColor: canJump
                                            ? null
                                            : isReserved
                                                ? theme.colorScheme.onSurface
                                                    .withValues(alpha: 0.12)
                                                : null,
                                        visualDensity: VisualDensity.compact,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: canJump
                                          ? () {
                                              PiliScheme.routePushFromUrl(
                                                  btn.jumpUrl!);
                                            }
                                          : btn.disable == 1
                                              ? null
                                              : () async {
                                                  var res = await DynamicsHttp
                                                      .dynReserve(
                                                    reserveId: reserve.rid,
                                                    curBtnStatus: btn.status,
                                                    dynamicIdStr: item.idStr,
                                                    reserveTotal:
                                                        reserve.reserveTotal,
                                                  );
                                                  if (res['status']) {
                                                    reserve
                                                      ..desc2?.text =
                                                          res['data']
                                                              ['desc_update']
                                                      ..reserveTotal =
                                                          res['data']
                                                              ['reserve_update']
                                                      ..button!.status = res[
                                                              'data']
                                                          ['final_btn_status'];
                                                    if (context.mounted) {
                                                      (context as Element?)
                                                          ?.markNeedsBuild();
                                                    }
                                                  } else {
                                                    SmartDialog.showToast(
                                                        res['msg']);
                                                  }
                                                },
                                      child: Text(
                                        btn.jumpText != null
                                            ? btn.jumpText!
                                            : isReserved
                                                ? btn.checkText!
                                                : btn.uncheckText!,
                                      ),
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink()
            : const SizedBox.shrink();
      // 商品
      case 'ADDITIONAL_TYPE_GOODS':
        final content = item.modules.moduleDynamic!.additional!.goods!;
        if (content.items?.isNotEmpty == true) {
          final borderRadius = floor == 1 ? null : StyleString.mdRadius;
          return Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Material(
              color: bgColor,
              borderRadius: borderRadius,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content.items!.map((e) {
                  return InkWell(
                    borderRadius: borderRadius,
                    onTap: () {
                      PiliScheme.routePushFromUrl(e.jumpUrl!);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Row(
                        children: [
                          if (e.cover?.isNotEmpty == true) ...[
                            NetworkImgLayer(
                              width: 45,
                              height: 45,
                              src: e.cover,
                              radius: 6,
                            ),
                            const SizedBox(width: 10),
                          ],
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.name!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (e.price?.isNotEmpty == true)
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${e.price}',
                                          style: TextStyle(
                                            color: theme.colorScheme.primary,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: ' 起',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          if (e.jumpDesc?.isNotEmpty == true) ...[
                            const SizedBox(width: 10),
                            FilledButton.tonal(
                              onPressed: () {
                                PiliScheme.routePushFromUrl(e.jumpUrl!);
                              },
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                visualDensity: const VisualDensity(
                                    horizontal: -2, vertical: -3),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(e.jumpDesc!),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      // case 'ADDITIONAL_TYPE_MATCH':
      // final content = item.modules.moduleDynamic!.additional!.match;
      //   return const SizedBox.shrink();
      // case 'ADDITIONAL_TYPE_COMMON':
      // final content = item.modules.moduleDynamic!.additional!.common;
      //   return const SizedBox.shrink();
      case 'ADDITIONAL_TYPE_VOTE':
        final vote = item.modules.moduleDynamic!.additional!.vote!;
        final borderRadius = floor == 1 ? null : StyleString.mdRadius;
        return Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Material(
            color: bgColor,
            borderRadius: borderRadius,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: () {
                showVoteDialog(
                  context,
                  vote.voteId,
                  item.idStr,
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: floor == 1
                            ? theme.colorScheme.surface
                            : theme.dividerColor.withValues(alpha: 0.08),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      width: 70,
                      height: 56,
                      child: const Icon(Icons.bar_chart_rounded),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            vote.desc!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${Utils.numFormat(vote.joinNum)}人参与',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13, color: theme.colorScheme.outline),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    FilledButton.tonal(
                      onPressed: () {
                        showVoteDialog(
                          context,
                          vote.voteId,
                          item.idStr,
                        );
                      },
                      style: FilledButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        visualDensity:
                            const VisualDensity(horizontal: -2, vertical: -3),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text('参与'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      default:
        if (BuildConfig.isDebug) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text('additional panel\ntype: $type'),
          );
        }
        return const SizedBox.shrink();
    }
  } catch (e) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SelectableText(
        '''
additional panel error
id: ${item.idStr}
type: $type
err: $e''',
      ),
    );
  }
}
