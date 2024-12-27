import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/article/member_article.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/audio/member_audio.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/video/member_video.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute_ctr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ContributeType { video, charging, season, series, bangumi }

class MemberContribute extends StatefulWidget {
  const MemberContribute({
    super.key,
    this.heroTag,
    this.initialIndex,
    required this.mid,
  });

  final String? heroTag;
  final int? initialIndex;
  final int mid;

  @override
  State<MemberContribute> createState() => _MemberContributeState();
}

class _MemberContributeState extends State<MemberContribute>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final _controller = Get.put(
    MemberContributeCtr(
      heroTag: widget.heroTag,
      initialIndex: widget.initialIndex,
    ),
    tag: widget.heroTag,
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _controller.tabs != null
        ? Column(
            children: [
              Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.surface,
                child: Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: TabBar(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    isScrollable: true,
                    tabs: _controller.tabs!,
                    tabAlignment: TabAlignment.start,
                    controller: _controller.tabController,
                    dividerHeight: 0,
                    indicatorWeight: 0,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                    indicator: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: const TextStyle(fontSize: 14),
                    labelColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    unselectedLabelColor: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _controller.tabController,
                  children: _controller.items!
                      .map(
                        (item) => switch (item.param) {
                          'video' => MemberVideo(
                              type: ContributeType.video,
                              heroTag: widget.heroTag,
                              mid: widget.mid,
                              title: item.title,
                            ),
                          'charging_video' => MemberVideo(
                              type: ContributeType.charging,
                              heroTag: widget.heroTag,
                              mid: widget.mid,
                              title: item.title,
                            ),
                          'article' => MemberArticle(
                              heroTag: widget.heroTag,
                              mid: widget.mid,
                            ),
                          'audio' => MemberAudio(heroTag: widget.heroTag),
                          'season_video' => MemberVideo(
                              type: ContributeType.season,
                              heroTag: widget.heroTag,
                              mid: widget.mid,
                              seasonId: item.seasonId,
                              title: item.title,
                            ),
                          'series' => MemberVideo(
                              type: ContributeType.series,
                              heroTag: widget.heroTag,
                              mid: widget.mid,
                              seriesId: item.seriesId,
                              title: item.title,
                            ),
                          _ => Center(child: Text(item.title!))
                        },
                      )
                      .toList(),
                ),
              ),
            ],
          )
        : MemberVideo(
            type: ContributeType.video,
            heroTag: widget.heroTag,
            mid: widget.mid,
            title: '视频',
          );
  }
}
