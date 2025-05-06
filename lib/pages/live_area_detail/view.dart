import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_area_list/area_item.dart';
import 'package:PiliPlus/pages/live_area_detail/child/view.dart';
import 'package:PiliPlus/pages/live_area_detail/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveAreaDetailPage extends StatefulWidget {
  const LiveAreaDetailPage({
    super.key,
    required this.areaId,
    required this.parentAreaId,
    required this.parentName,
  });

  final dynamic areaId;
  final dynamic parentAreaId;
  final String parentName;

  @override
  State<LiveAreaDetailPage> createState() => _LiveAreaDetailPageState();
}

class _LiveAreaDetailPageState extends State<LiveAreaDetailPage> {
  late final _controller = Get.put(
      LiveAreaDatailController(widget.areaId?.toString(), widget.parentAreaId));

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.parentName),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: search
            },
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Obx(() => _buildBody(theme, _controller.loadingState.value)),
      ),
    );
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<AreaItem>?> loadingState) {
    return switch (loadingState) {
      Loading() => const SizedBox.shrink(),
      Success() => loadingState.response?.isNotEmpty == true
          ? DefaultTabController(
              initialIndex: _controller.initialIndex,
              length: loadingState.response!.length,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: loadingState.response!
                        .map((e) => Tab(text: e.name ?? ''))
                        .toList(),
                  ),
                  Expanded(
                    child: tabBarView(
                      children: loadingState.response!
                          .map((e) => LiveAreaChildPage(
                                areaId: e.id,
                                parentAreaId: e.parentId,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            )
          : LiveAreaChildPage(
              areaId: widget.areaId,
              parentAreaId: widget.parentAreaId,
            ),
      Error() => LiveAreaChildPage(
          areaId: widget.areaId,
          parentAreaId: widget.parentAreaId,
        ),
    };
  }
}
