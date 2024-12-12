import 'dart:math';

import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/common/widgets/video_card_v_member_home.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/space/data.dart';
import 'package:PiliPalaX/models/space/item.dart';
import 'package:PiliPalaX/pages/bangumi/widgets/bangumi_card_v_member_home.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute_ctr.dart';
import 'package:PiliPalaX/pages/member/new/controller.dart';
import 'package:PiliPalaX/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_scheme.dart';

class MemberHome extends StatefulWidget {
  const MemberHome({super.key, this.heroTag});

  final String? heroTag;

  @override
  State<MemberHome> createState() => _MemberHomeState();
}

class _MemberHomeState extends State<MemberHome>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final _ctr = Get.find<MemberControllerNew>(tag: widget.heroTag);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildBody(_ctr.loadingState.value);
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => loadingState.response is Data
          ? CustomScrollView(
              slivers: [
                if (loadingState.response?.archive?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '视频',
                    param: 'contribute',
                    param1: 'video',
                    count: loadingState.response.archive.count,
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: StyleString.safeSpace,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: StyleString.cardSpace,
                        crossAxisSpacing: StyleString.cardSpace,
                        maxCrossAxisExtent: Grid.maxRowWidth,
                        childAspectRatio: StyleString.aspectRatio,
                        mainAxisExtent:
                            MediaQuery.textScalerOf(context).scale(90),
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return VideoCardVMemberHome(
                            videoItem:
                                loadingState.response.archive.item[index],
                          );
                        },
                        childCount:
                            min(4, loadingState.response.archive.item.length),
                      ),
                    ),
                  ),
                ],
                if (loadingState.response?.favourite2?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '收藏',
                    param: 'favorite',
                    count: loadingState.response.favourite2.count,
                  ),
                  // TODO
                ],
                if (loadingState.response?.coinArchive?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '最近投币的视频',
                    param: 'coinArchive',
                    count: loadingState.response.coinArchive.count,
                  ),
                  // TODO
                ],
                if (loadingState.response?.likeArchive?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '最近点赞的视频',
                    param: 'likeArchive',
                    count: loadingState.response.likeArchive.count,
                  ),
                  // TODO
                ],
                if (loadingState.response?.article?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '专栏',
                    param: 'contribute',
                    param1: 'article',
                    count: loadingState.response.article.count,
                  ),
                  SliverToBoxAdapter(
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        PiliScheme.routePush(Uri.parse(
                            loadingState.response.article.item.first.uri ??
                                ''));
                      },
                      leading: loadingState.response.article.item.first
                                  .originImageUrls?.isNotEmpty ==
                              true
                          ? Container(
                              margin: const EdgeInsets.symmetric(vertical: 6),
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return NetworkImgLayer(
                                    radius: 6,
                                    src: loadingState.response.article.item
                                        .first.originImageUrls!.first,
                                    width: constraints.maxHeight *
                                        StyleString.aspectRatio,
                                    height: constraints.maxHeight,
                                  );
                                },
                              ),
                            )
                          : null,
                      title: Text(
                        loadingState.response.article.item.first.title ?? '',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      subtitle: loadingState.response.article.item.first.summary
                                  ?.isNotEmpty ==
                              true
                          ? Text(
                              loadingState.response.article.item.first.summary!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            )
                          : null,
                    ),
                  ),
                ],
                if (loadingState.response?.audios?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '音频',
                    param: 'contribute',
                    param1: 'audio',
                    count: loadingState.response.audios.count,
                  ),
                  // TODO
                ],
                if (loadingState.response?.season?.item?.isNotEmpty ==
                    true) ...[
                  _videoHeader(
                    title: '追番',
                    param: 'bangumi',
                    count: loadingState.response.season.count,
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: StyleString.safeSpace,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: StyleString.cardSpace - 2,
                        crossAxisSpacing: StyleString.cardSpace,
                        maxCrossAxisExtent: Grid.maxRowWidth / 3 * 2,
                        childAspectRatio: 0.65,
                        mainAxisExtent:
                            MediaQuery.textScalerOf(context).scale(60),
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return BangumiCardVMemberHome(
                            bangumiItem:
                                loadingState.response.season.item[index],
                          );
                        },
                        childCount:
                            min(3, loadingState.response.season.item.length),
                      ),
                    ),
                  ),
                ],
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 12 + MediaQuery.of(context).padding.bottom,
                  ),
                ),
              ],
            )
          : errorWidget(),
      Error() => errorWidget(),
      LoadingState() => throw UnimplementedError(),
    };
  }

  Widget _videoHeader({
    required String title,
    required String param,
    String? param1,
    required int count,
  }) =>
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '$title '),
                    TextSpan(
                      text: count.toString(),
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  int index =
                      _ctr.tab2!.indexWhere((item) => item.param == param);
                  if (index != -1) {
                    if (['video', 'article', 'audio'].contains(param1)) {
                      List<Item> items = _ctr.tab2!
                          .firstWhere((item) => item.param == param)
                          .items!;
                      int index1 =
                          items.indexWhere((item) => item.param == param1);
                      try {
                        final contributeCtr =
                            Get.find<MemberContributeCtr>(tag: widget.heroTag);
                        // contributeCtr.tabController?.animateTo(index1);
                        if (contributeCtr.tabController?.index != index1) {
                          contributeCtr.tabController?.index = index1;
                        }
                        debugPrint('initialized');
                      } catch (e) {
                        _ctr.contributeInitialIndex.value = index1;
                        debugPrint('not initialized');
                      }
                    }
                    _ctr.tabController?.animateTo(index);
                  } else {
                    // TODO
                    SmartDialog.showToast('view $param');
                  }
                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '查看更多',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.top,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
