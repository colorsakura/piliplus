import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/badge.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/utils/utils.dart';

import '../../../utils/grid.dart';

Widget searchBangumiPanel(context, ctr, LoadingState loadingState) {
  TextStyle style =
      TextStyle(fontSize: Theme.of(context).textTheme.labelMedium!.fontSize);
  return switch (loadingState) {
    Loading() => loadingWidget,
    Success() => (loadingState.response as List?)?.isNotEmpty == true
        ? CustomScrollView(
            controller: ctr.scrollController,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(
                  bottom: StyleString.safeSpace +
                      MediaQuery.of(context).padding.bottom,
                ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: StyleString.safeSpace,
                    crossAxisSpacing: StyleString.safeSpace,
                    maxCrossAxisExtent: Grid.maxRowWidth * 2,
                    mainAxisExtent: 160,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      if (index == loadingState.response.length - 1) {
                        ctr.onLoadMore();
                      }
                      var i = loadingState.response[index];
                      return InkWell(
                        onTap: () {
                          Utils.viewBangumi(seasonId: i.seasonId);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: StyleString.safeSpace,
                            vertical: StyleString.cardSpace,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  NetworkImgLayer(
                                    width: 111,
                                    height: 148,
                                    src: i.cover,
                                  ),
                                  PBadge(
                                    text: i.mediaType == 1 ? '番剧' : '国创',
                                    top: 6.0,
                                    right: 4.0,
                                    bottom: null,
                                    left: null,
                                  )
                                ],
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 4),
                                    RichText(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface),
                                        children: [
                                          for (var i in i.title) ...[
                                            TextSpan(
                                              text: i['text'],
                                              style: TextStyle(
                                                fontSize:
                                                    MediaQuery.textScalerOf(
                                                            context)
                                                        .scale(Theme.of(context)
                                                            .textTheme
                                                            .titleSmall!
                                                            .fontSize!),
                                                fontWeight: FontWeight.bold,
                                                color: i['type'] == 'em'
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .primary
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .onSurface,
                                              ),
                                            ),
                                          ],
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                        '评分:${i.mediaScore['score'].toString()}',
                                        style: style),
                                    Row(
                                      children: [
                                        Text(i.areas, style: style),
                                        const SizedBox(width: 3),
                                        const Text('·'),
                                        const SizedBox(width: 3),
                                        Text(
                                            Utils.dateFormat(i.pubtime)
                                                .toString(),
                                            style: style),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(i.styles, style: style),
                                        const SizedBox(width: 3),
                                        const Text('·'),
                                        const SizedBox(width: 3),
                                        Text(i.indexShow, style: style),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: loadingState.response.length,
                  ),
                ),
              ),
            ],
          )
        : errorWidget(
            callback: ctr.onReload,
          ),
    Error() => errorWidget(
        errMsg: loadingState.errMsg,
        callback: ctr.onReload,
      ),
    LoadingState() => throw UnimplementedError(),
  };
}
