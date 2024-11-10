import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/dynamics/widgets/dynamic_panel_grpc.dart';
import 'package:PiliPalaX/pages/member/new/content/member_dynamic/member_dynamic_ctr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberDynamic extends StatefulWidget {
  const MemberDynamic({
    super.key,
    required this.mid,
  });

  final int mid;

  @override
  State<MemberDynamic> createState() => _MemberDynamicState();
}

class _MemberDynamicState extends State<MemberDynamic>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final _controller = Get.put(MemberDynamicCtr(mid: widget.mid));

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Obx(() => _buildBody(_controller.loadingState.value));
  }

  _buildBody(LoadingState loadingState) {
    return loadingState is Success
        ? refreshIndicator(
            onRefresh: () async {
              await _controller.onRefresh();
            },
            child: ListView.separated(
              itemCount: loadingState.response.length,
              itemBuilder: (_, index) {
                if (index == loadingState.response.length - 1) {
                  _controller.onLoadMore();
                }
                return DynamicPanelGrpc(
                  item: loadingState.response[index],
                );
              },
              separatorBuilder: (_, index) => const SizedBox(height: 10),
            ),
          )
        : loadingState is Error
            ? Center(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    HttpError(
                      errMsg: loadingState.errMsg,
                      fn: _controller.onReload,
                    ),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              );
  }
}
