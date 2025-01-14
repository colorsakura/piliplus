import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/member/new/content/member_contribute/content/season_series/controller.dart';
import 'package:PiliPlus/pages/member/new/content/member_contribute/content/season_series/widget/season_series_card.dart';
import 'package:PiliPlus/pages/member/new/content/member_contribute/content/video/member_video.dart';
import 'package:PiliPlus/pages/member/new/content/member_contribute/member_contribute.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeasonSeriesPage extends StatefulWidget {
  const SeasonSeriesPage({
    super.key,
    required this.mid,
    this.heroTag,
  });

  final int mid;
  final String? heroTag;

  @override
  State<SeasonSeriesPage> createState() => _SeasonSeriesPageState();
}

class _SeasonSeriesPageState extends State<SeasonSeriesPage>
    with AutomaticKeepAliveClientMixin {
  late final _controller = Get.put(
    SeasonSeriesController(widget.mid),
    tag: widget.heroTag,
  );

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Obx(() => _buildBody(_controller.loadingState.value));
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(
                    top: StyleString.safeSpace - 5,
                    bottom: MediaQuery.paddingOf(context).bottom + 80,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithExtentAndRatio(
                      mainAxisSpacing: 2,
                      maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                      childAspectRatio: StyleString.aspectRatio * 2.2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index == loadingState.response.length - 1) {
                          _controller.onLoadMore();
                        }
                        return SeasonSeriesCard(
                          item: loadingState.response[index],
                          onTap: () {
                            dynamic item = loadingState.response[index];
                            bool isSeason = item['meta']['season_id'] != null;
                            dynamic id = isSeason
                                ? item['meta']['season_id']
                                : item['meta']['series_id'];
                            Get.to(
                              Scaffold(
                                appBar: AppBar(
                                  title: Text(item['meta']['name']),
                                ),
                                body: MemberVideo(
                                  type: isSeason
                                      ? ContributeType.season
                                      : ContributeType.series,
                                  heroTag: widget.heroTag,
                                  mid: widget.mid,
                                  seasonId: isSeason ? id : null,
                                  seriesId: isSeason ? null : id,
                                  title: item['meta']['name'],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      childCount: loadingState.response.length,
                    ),
                  ),
                ),
              ],
            )
          : scrollErrorWidget(
              callback: () {
                _controller.onReload();
              },
            ),
      Error() => scrollErrorWidget(
          errMsg: loadingState.errMsg,
          callback: () {
            _controller.onReload();
          },
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
