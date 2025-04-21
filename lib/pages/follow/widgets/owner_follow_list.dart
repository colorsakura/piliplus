import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/follow/result.dart';
import 'package:PiliPlus/models/member/tags.dart';
import 'package:PiliPlus/pages/follow/index.dart';
import 'follow_item.dart';

// TODO: refactor
class OwnerFollowList extends StatefulWidget {
  final FollowController ctr;
  final MemberTagItemModel? tagItem;
  const OwnerFollowList({super.key, required this.ctr, this.tagItem});

  @override
  State<OwnerFollowList> createState() => _OwnerFollowListState();
}

class _OwnerFollowListState extends State<OwnerFollowList>
    with AutomaticKeepAliveClientMixin {
  late int? mid;
  late Future _futureBuilderFuture;
  final ScrollController scrollController = ScrollController();
  int pn = 1;
  int ps = 20;
  late MemberTagItemModel tagItem;
  RxList<FollowItemModel> followList = <FollowItemModel>[].obs;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    mid = widget.ctr.mid;
    tagItem = widget.tagItem!;
    _futureBuilderFuture = followUpGroup('init');
    scrollController.addListener(listener);
  }

  void listener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      EasyThrottle.throttle('follow', const Duration(seconds: 1), () {
        followUpGroup('onLoad');
      });
    }
  }

  // 获取分组下up
  Future followUpGroup(type) async {
    if (type == 'init') {
      pn = 1;
    }
    var res = await MemberHttp.followUpGroup(mid, tagItem.tagid, pn, ps);
    if (res['status']) {
      if (res['data'].isNotEmpty) {
        if (type == 'init') {
          followList.value = res['data'];
        } else {
          followList.addAll(res['data']);
        }
        pn += 1;
      }
    }
    return res;
  }

  @override
  void dispose() {
    scrollController.removeListener(listener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async => await followUpGroup('init'),
      child: FutureBuilder(
        future: _futureBuilderFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data;
            if (data['status']) {
              return Obx(
                () => followList.isNotEmpty
                    ? ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: scrollController,
                        itemCount: followList.length,
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom + 80,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return FollowItem(
                            item: followList[index],
                            ctr: widget.ctr,
                            callback: (attr) {
                              followList[index].attribute = attr == 0 ? -1 : 0;
                              followList.refresh();
                            },
                          );
                        },
                      )
                    : scrollErrorWidget(
                        callback: () => widget.ctr.queryFollowings('init'),
                      ),
              );
            } else {
              return scrollErrorWidget(
                errMsg: data['msg'],
                callback: () => widget.ctr.queryFollowings('init'),
              );
            }
          } else {
            // 骨架屏
            return const SizedBox();
          }
        },
      ),
    );
  }
}
