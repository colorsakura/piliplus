import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/member/tags.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

class GroupPanel extends StatefulWidget {
  final int? mid;
  final List? tags;
  final ScrollController? scrollController;
  const GroupPanel({
    super.key,
    this.mid,
    this.tags,
    this.scrollController,
  });

  @override
  State<GroupPanel> createState() => _GroupPanelState();
}

class _GroupPanelState extends State<GroupPanel> {
  late Future _futureBuilderFuture;
  late List<MemberTagItemModel> tagsList;
  bool showDefaultBtn = true;

  @override
  void initState() {
    super.initState();
    _futureBuilderFuture = MemberHttp.followUpTags();
    () async {
      dynamic result = await _futureBuilderFuture;
      if (result['status']) {
        tagsList = result['data'];
        tagsList.removeWhere((item) => item.tagid == 0);
        tagsList = tagsList.map((item) {
          return item..checked = widget.tags?.contains(item.tagid) == true;
        }).toList();
        setState(() {
          showDefaultBtn = !tagsList.any((e) => e.checked == true);
        });
      }
    }();
  }

  void onSave() async {
    feedBack();
    // 是否有选中的 有选中的带id，没选使用默认0
    final bool anyHasChecked =
        tagsList.any((MemberTagItemModel e) => e.checked == true);
    late String tagids;
    List<int>? tagidList;
    if (anyHasChecked) {
      final List<MemberTagItemModel> checkedList =
          tagsList.where((MemberTagItemModel e) => e.checked == true).toList();
      tagidList = checkedList.map<int>((e) => e.tagid!).toList();
      tagids = tagidList.join(',');
    } else {
      tagids = '0';
    }
    // 保存
    final res = await MemberHttp.addUsers(widget.mid, tagids);
    SmartDialog.showToast(res['msg']);
    if (res['status']) {
      Get.back(result: tagidList?.contains(-10) == true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        if (notification.extent <= 1e-5) {
          Get.back();
        }
        return false;
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          children: <Widget>[
            AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
              ),
              leading: IconButton(
                  tooltip: '关闭',
                  onPressed: Get.back,
                  icon: const Icon(Icons.close_outlined)),
              title: Text('设置关注分组'),
            ),
            Expanded(
              child: Material(
                child: FutureBuilder(
                  future: _futureBuilderFuture,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // TODO: refactor
                      if (snapshot.data is! Map) {
                        return HttpError(
                          isSliver: false,
                          callback: () => setState(() {
                            _futureBuilderFuture = MemberHttp.followUpTags();
                          }),
                        );
                      }
                      Map data = snapshot.data as Map;
                      if (data['status']) {
                        return ListView.builder(
                          controller: widget.scrollController,
                          itemCount: tagsList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                tagsList[index].checked =
                                    !tagsList[index].checked!;
                                showDefaultBtn =
                                    !tagsList.any((e) => e.checked == true);
                                setState(() {});
                              },
                              dense: true,
                              leading: const Icon(Icons.group_outlined),
                              minLeadingWidth: 0,
                              title: Text(tagsList[index].name ?? ''),
                              subtitle: tagsList[index].tip != ''
                                  ? Text(tagsList[index].tip ?? '')
                                  : null,
                              trailing: Transform.scale(
                                scale: 0.9,
                                child: Checkbox(
                                  value: tagsList[index].checked,
                                  onChanged: (bool? checkValue) {
                                    tagsList[index].checked = checkValue;
                                    showDefaultBtn =
                                        !tagsList.any((e) => e.checked == true);
                                    setState(() {});
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return CustomScrollView(
                          controller: widget.scrollController,
                          slivers: [
                            HttpError(
                              errMsg: data['msg'],
                              callback: () => setState(() {}),
                            ),
                          ],
                        );
                      }
                    } else {
                      // 骨架屏
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Theme.of(context).disabledColor.withValues(alpha: 0.08),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 12,
                bottom: MediaQuery.of(context).padding.bottom + 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => onSave(),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(showDefaultBtn ? '保存至默认分组' : '保存'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
