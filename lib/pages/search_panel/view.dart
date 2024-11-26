import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/search_panel/widgets/video_panel.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/media_bangumi.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/models/common/search_type.dart';

import '../../common/constants.dart';
import '../../utils/grid.dart';
import 'controller.dart';
import 'widgets/article_panel.dart';
import 'widgets/live_panel.dart';
import 'widgets/media_bangumi_panel.dart';
import 'widgets/user_panel.dart';

class SearchPanel extends StatefulWidget {
  final String? keyword;
  final SearchType? searchType;
  final String? tag;
  const SearchPanel({
    super.key,
    required this.keyword,
    required this.searchType,
    this.tag,
  });

  @override
  State<SearchPanel> createState() => _SearchPanelState();
}

class _SearchPanelState extends State<SearchPanel>
    with AutomaticKeepAliveClientMixin {
  late SearchPanelController _searchPanelController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _searchPanelController = Get.put(
      SearchPanelController(
        keyword: widget.keyword,
        searchType: widget.searchType,
        tag: widget.tag,
      ),
      tag: widget.searchType!.type + widget.keyword!,
    );
    _searchPanelController.scrollController.addListener(() async {
      if (_searchPanelController.scrollController.position.pixels >=
          _searchPanelController.scrollController.position.maxScrollExtent -
              100) {
        EasyThrottle.throttle('history', const Duration(seconds: 1), () {
          _searchPanelController.onLoadMore();
        });
      }
    });
  }

  @override
  void dispose() {
    _searchPanelController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        await _searchPanelController.onRefresh();
      },
      child: Obx(() => _buildBody(_searchPanelController.loadingState.value)),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    if (loadingState is Loading) {
      return CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithExtentAndRatio(
                mainAxisSpacing: StyleString.safeSpace,
                crossAxisSpacing: StyleString.safeSpace,
                maxCrossAxisExtent: Grid.maxRowWidth * 2,
                childAspectRatio: StyleString.aspectRatio * 2.4,
                mainAxisExtent: 0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                switch (widget.searchType) {
                  case SearchType.video:
                    return const VideoCardHSkeleton();
                  case SearchType.media_bangumi:
                    return const MediaBangumiSkeleton();
                  case SearchType.bili_user:
                    return const VideoCardHSkeleton();
                  case SearchType.live_room:
                    return const VideoCardHSkeleton();
                  default:
                    return const VideoCardHSkeleton();
                }
              },
              childCount: 15,
            ),
          ),
        ],
      );
    } else {
      switch (widget.searchType) {
        case SearchType.video:
          return searchVideoPanel(
            context,
            _searchPanelController,
            loadingState,
          );
        case SearchType.media_bangumi:
          return searchBangumiPanel(
            context,
            _searchPanelController,
            loadingState,
          );
        case SearchType.bili_user:
          return searchUserPanel(
            context,
            _searchPanelController,
            loadingState,
          );
        case SearchType.live_room:
          return searchLivePanel(
            context,
            _searchPanelController,
            loadingState,
          );
        case SearchType.article:
          return searchArticlePanel(
            context,
            _searchPanelController,
            loadingState,
          );
        default:
          return const SizedBox();
      }
    }
  }
}
