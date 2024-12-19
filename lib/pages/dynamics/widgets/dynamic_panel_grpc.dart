import 'package:PiliPalaX/grpc/app/dynamic/v2/dynamic.pb.dart';
import 'package:PiliPalaX/pages/dynamics/widgets/author_panel_grpc.dart';
import 'package:PiliPalaX/pages/dynamics/widgets/content_panel_grpc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/pages/dynamics/index.dart';

class DynamicPanelGrpc extends StatelessWidget {
  final DynamicItem item;
  final String? source;
  final Function? onRemove;

  DynamicPanelGrpc({
    required this.item,
    this.source,
    this.onRemove,
    super.key,
  });

  final DynamicsController _dynamicsController = Get.put(DynamicsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: source == 'detail'
          ? const EdgeInsets.only(bottom: 12)
          : EdgeInsets.zero,
      // decoration: BoxDecoration(
      //   border: Border(
      //     bottom: BorderSide(
      //       width: 8,
      //       color: Theme.of(context).dividerColor.withValues(alpha: 0.05),
      //     ),
      //   ),
      // ),
      child: Material(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).cardColor.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          onTap: source == 'detail' && item.itemType == DynamicType.draw
              ? null
              : () => _dynamicsController.pushDetail(item, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: AuthorPanelGrpc(
                  item: item,
                  source: source,
                  onRemove: onRemove,
                ),
              ),
              ContentGrpc(item: item, source: source),
              // forWard(item, context, _dynamicsController, source),
              const SizedBox(height: 2),
              // if (source == null) ActionPanel(item: item),
            ],
          ),
        ),
      ),
    );
  }
}
