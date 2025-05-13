import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

/// TODO 点击跳转
Widget addWidget(
    ThemeData theme, DynamicItemModel item, BuildContext context, type,
    {floor = 1}) {
  Color bgColor = floor == 1
      ? theme.dividerColor.withOpacity(0.08)
      : theme.colorScheme.surface;
  switch (type) {
    case 'ADDITIONAL_TYPE_UGC':
      final content = item.modules.moduleDynamic!.additional!.ugc!;
      // 转发的投稿
      return InkWell(
        onTap: content.jumpUrl == null
            ? null
            : () {
                PiliScheme.routePushFromUrl(content.jumpUrl!);
              },
        child: Container(
          padding:
              const EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
          color: bgColor,
          child: Row(
            children: [
              NetworkImgLayer(
                width: 120,
                height: 75,
                src: content.cover,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      content.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      content.descSecond!,
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
      );
    case 'ADDITIONAL_TYPE_RESERVE':
      final content = item.modules.moduleDynamic!.additional!.reserve!;
      return content.state != -1
          ? content.title != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      color: bgColor,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  content.title!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 1),
                                Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      color: theme.colorScheme.outline,
                                      fontSize:
                                          theme.textTheme.labelMedium!.fontSize,
                                    ),
                                    children: [
                                      if (content.desc1 != null)
                                        TextSpan(text: content.desc1!.text),
                                      const TextSpan(text: '  '),
                                      if (content.desc2 != null)
                                        TextSpan(text: content.desc2!.text),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          if (content.button != null)
                            Builder(
                              builder: (context) {
                                final btn = content.button!;
                                final isReserved = btn.status == btn.type;
                                return FilledButton.tonal(
                                  style: FilledButton.styleFrom(
                                    foregroundColor: isReserved
                                        ? theme.colorScheme.onSurfaceVariant
                                        : null,
                                    backgroundColor: isReserved
                                        ? theme.colorScheme.onInverseSurface
                                        : null,
                                    visualDensity: VisualDensity.compact,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: btn.disable == 1
                                      ? null
                                      : () async {
                                          var res =
                                              await DynamicsHttp.dynReserve(
                                            reserveId: content.rid,
                                            curBtnStatus: btn.status,
                                            dynamicIdStr: item.idStr,
                                            reserveTotal: content.reserveTotal,
                                          );
                                          if (res['status']) {
                                            content
                                              ..desc2?.text =
                                                  res['data']['desc_update']
                                              ..reserveTotal =
                                                  res['data']['reserve_update']
                                              ..button!.status = res['data']
                                                  ['final_btn_status'];
                                            if (context.mounted) {
                                              (context as Element?)
                                                  ?.markNeedsBuild();
                                            }
                                          } else {
                                            SmartDialog.showToast(res['msg']);
                                          }
                                        },
                                  child: Text(
                                    isReserved
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
                )
              : const SizedBox.shrink()
          : const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_GOODS':
      // final content = item.modules.moduleDynamic!.additional!.goods;
      // 商品
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_MATCH':
      // final content = item.modules.moduleDynamic!.additional!.match;
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_COMMON':
      // final content = item.modules.moduleDynamic!.additional!.common;
      return const SizedBox.shrink();
    case 'ADDITIONAL_TYPE_VOTE':
      return const SizedBox.shrink();
    default:
      return const SizedBox.shrink();
  }
}
