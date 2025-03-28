import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/fav/note/controller.dart';
import 'package:PiliPlus/pages/fav/note/widget/item.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavNoteChildPage extends StatefulWidget {
  const FavNoteChildPage({super.key, required this.isPublish});

  final bool isPublish;

  @override
  State<FavNoteChildPage> createState() => _FavNoteChildPageState();
}

class _FavNoteChildPageState extends State<FavNoteChildPage>
    with AutomaticKeepAliveClientMixin {
  late final FavNoteController _favNoteController =
      Get.put(FavNoteController(widget.isPublish), tag: '${widget.isPublish}');

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        await _favNoteController.onRefresh();
      },
      child: CustomScrollView(
        slivers: [
          Obx(() => _buildBody(_favNoteController.loadingState.value)),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 2,
            maxCrossAxisExtent: Grid.mediumCardWidth * 2,
            childAspectRatio: StyleString.aspectRatio * 2.2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoCardHSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.paddingOf(context).bottom + 80),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 2,
                  maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.7,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return FavNoteItem(item: loadingState.response[index]);
                  },
                  childCount: loadingState.response.length,
                ),
              ),
            )
          : HttpError(callback: _favNoteController.onReload),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _favNoteController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  @override
  bool get wantKeepAlive => true;
}
