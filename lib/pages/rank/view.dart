import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends State<RankPage>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  final RankController _rankController = Get.put(RankController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _rankController.tabController =
        TabController(vsync: this, length: _rankController.tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      children: [
        Expanded(
          flex: 18,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            child: Column(
              children: List.generate(
                _rankController.tabs.length,
                (index) => Obx(
                  () => IntrinsicHeight(
                    child: InkWell(
                      onTap: () {
                        _rankController.initialIndex.value = index;
                        _rankController.tabController.animateTo(index);
                      },
                      child: ColoredBox(
                        color: index == _rankController.initialIndex.value
                            ? Theme.of(context).colorScheme.onInverseSurface
                            : Theme.of(context).colorScheme.surface,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: double.infinity,
                              width: 3,
                              color: index == _rankController.initialIndex.value
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  _rankController.tabs[index]['label'],
                                  style: TextStyle(
                                    color: index ==
                                            _rankController.initialIndex.value
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context)
                                            .colorScheme
                                            .onSurface,
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
          flex: 82,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _rankController.tabController,
            children: _rankController.tabsPageList,
          ),
        ),
      ],
    );
  }
}
