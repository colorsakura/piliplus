import 'package:PiliPlus/models/common/rank_type.dart';
import 'package:PiliPlus/pages/rank/controller.dart';
import 'package:PiliPlus/pages/rank/zone/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends State<RankPage>
    with AutomaticKeepAliveClientMixin {
  final RankController _rankController = Get.put(RankController());

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    super.build(context);
    return Row(
      children: [
        SizedBox(
          width: 64,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            child: Column(
              children: List.generate(
                RankType.values.length,
                (index) => IntrinsicHeight(
                  child: Obx(
                    () => Ink(
                      color: index == _rankController.tabIndex.value
                          ? theme.colorScheme.onInverseSurface
                          : theme.colorScheme.surface,
                      child: InkWell(
                        onTap: () {
                          if (_rankController.tabIndex.value != index) {
                            _rankController.tabIndex.value = index;
                            _rankController.tabController.animateTo(index);
                          } else {
                            _rankController.animateToTop();
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: double.infinity,
                              width: 3,
                              color: index == _rankController.tabIndex.value
                                  ? theme.colorScheme.primary
                                  : Colors.transparent,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Text(
                                  RankType.values[index].label,
                                  style: TextStyle(
                                    color:
                                        index == _rankController.tabIndex.value
                                            ? theme.colorScheme.primary
                                            : theme.colorScheme.onSurface,
                                    fontSize: 15,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _rankController.tabController,
            children: RankType.values
                .map((item) => ZonePage(
                      rid: item.rid,
                      seasonType: item.seasonType,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
