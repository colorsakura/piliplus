import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/keep_alive_wrapper.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/models/upower_rank/rank_info.dart';
import 'package:PiliPlus/pages/member_upower_rank/controller.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpowerRankPage extends StatefulWidget {
  const UpowerRankPage({super.key, this.privilegeType});

  final int? privilegeType;

  @override
  State<UpowerRankPage> createState() => _UpowerRankPageState();
}

class _UpowerRankPageState extends State<UpowerRankPage>
    with AutomaticKeepAliveClientMixin {
  late final _controller = Get.put(
    UpowerRankController(widget.privilegeType),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    final child = refreshIndicator(
      onRefresh: _controller.onRefresh,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            sliver:
                Obx(() => _bilidBody(theme, _controller.loadingState.value)),
          ),
        ],
      ),
    );
    if (widget.privilegeType == null) {
      return Scaffold(
        appBar: AppBar(
          title: Obx(() => _controller.name.value == null
              ? const SizedBox.shrink()
              : Text(
                  '${_controller.name.value}充电排行榜${_controller.memberTotal == 0 ? '' : '(${_controller.memberTotal})'}')),
        ),
        body: SafeArea(
          top: false,
          bottom: false,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 625),
              child: Obx(
                () => _controller.tabs.value != null
                    ? DefaultTabController(
                        length: _controller.tabs.value!.length,
                        child: Column(
                          children: [
                            TabBar(
                              isScrollable: true,
                              tabAlignment: TabAlignment.start,
                              tabs: _controller.tabs.value!
                                  .map((e) => Tab(
                                      text:
                                          '${e.name!}(${e.memberTotal ?? 0})'))
                                  .toList(),
                            ),
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                child: tabBarView(
                                  children: [
                                    KeepAliveWrapper(
                                        builder: (context) => child),
                                    ..._controller.tabs.value!.sublist(1).map(
                                        (e) => UpowerRankPage(
                                            privilegeType: e.privilegeType))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : child,
              ),
            ),
          ),
        ),
      );
    } else {
      return child;
    }
  }

  Widget _bilidBody(
      ThemeData theme, LoadingState<List<UpowerRankInfo>?> loadingState) {
    return switch (loadingState) {
      Loading() => widget.privilegeType == null
          ? const SliverToBoxAdapter(child: LinearProgressIndicator())
          : const SliverToBoxAdapter(
              child: SizedBox(
                height: 125,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
      Success<List<UpowerRankInfo>?>(:var response) =>
        response?.isNotEmpty == true
            ? SliverList.builder(
                itemCount: response!.length,
                itemBuilder: (context, index) {
                  if (index == response.length - 1) {
                    _controller.onLoadMore();
                  }
                  final item = response[index];
                  return ListTile(
                    onTap: () => Get.toNamed('/member?mid=${item.mid}'),
                    leading: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: switch (index) {
                          0 => const Color(0xFFfdad13),
                          1 => const Color(0xFF8aace1),
                          2 => const Color(0xFFdfa777),
                          _ => theme.colorScheme.outline,
                        },
                      ),
                    ),
                    title: Row(
                      spacing: 12,
                      children: [
                        NetworkImgLayer(
                          width: 38,
                          height: 38,
                          src: item.avatar,
                          type: ImageType.avatar,
                        ),
                        Text(
                          item.nickname!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: item.day!.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: ' 天',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : HttpError(onReload: _controller.onReload),
      Error(:var errMsg) => HttpError(
          errMsg: errMsg,
          onReload: _controller.onReload,
        ),
    };
  }

  @override
  bool get wantKeepAlive => widget.privilegeType != null;
}
