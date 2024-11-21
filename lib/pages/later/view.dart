import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/no_data.dart';
import 'package:PiliPalaX/common/widgets/video_card_h.dart';
import 'package:PiliPalaX/pages/later/index.dart';

import '../../common/constants.dart';
import '../../utils/grid.dart';

class LaterPage extends StatefulWidget {
  const LaterPage({super.key});

  @override
  State<LaterPage> createState() => _LaterPageState();
}

class _LaterPageState extends State<LaterPage> {
  final LaterController _laterController = Get.put(LaterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            '稍后再看${_laterController.count.value == -1 ? '' : ' (${_laterController.count.value})'}',
          ),
        ),
        actions: [
          Obx(
            () => _laterController.count.value != -1
                ? TextButton(
                    onPressed: () => _laterController.toViewDel(context),
                    child: const Text('移除已看'),
                  )
                : const SizedBox(),
          ),
          Obx(
            () => _laterController.count.value != -1
                ? IconButton(
                    tooltip: '一键清空',
                    onPressed: () => _laterController.toViewClear(context),
                    icon: Icon(
                      Icons.clear_all_outlined,
                      size: 21,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _laterController.scrollController,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              left: StyleString.safeSpace,
              right: StyleString.safeSpace,
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            sliver: Obx(
              () => _buildBody(_laterController.loadingState.value),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return loadingState is Success
        ? SliverGrid(
            gridDelegate: SliverGridDelegateWithExtentAndRatio(
              mainAxisSpacing: StyleString.safeSpace,
              crossAxisSpacing: StyleString.safeSpace,
              maxCrossAxisExtent: Grid.maxRowWidth * 2,
              childAspectRatio: StyleString.aspectRatio * 2.4,
              mainAxisExtent: 0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                var videoItem = loadingState.response[index];
                return VideoCardH(
                    videoItem: videoItem,
                    source: 'later',
                    longPress: () => _laterController.toViewDel(context,
                        aid: videoItem.aid));
              },
              childCount: loadingState.response.length,
            ),
          )
        : loadingState is Empty
            ? const NoData()
            : loadingState is Error
                ? HttpError(
                    errMsg: loadingState.errMsg,
                    fn: _laterController.onReload,
                  )
                : SliverGrid(
                    gridDelegate: SliverGridDelegateWithExtentAndRatio(
                      mainAxisSpacing: StyleString.safeSpace,
                      crossAxisSpacing: StyleString.safeSpace,
                      maxCrossAxisExtent: Grid.maxRowWidth * 2,
                      childAspectRatio: StyleString.aspectRatio * 2.4,
                      mainAxisExtent: 0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return const VideoCardHSkeleton();
                      },
                      childCount: 10,
                    ),
                  );
  }
}
