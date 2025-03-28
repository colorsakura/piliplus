import 'package:PiliPlus/pages/fav/note/child_view.dart';
import 'package:flutter/material.dart';

class FavNotePage extends StatefulWidget {
  const FavNotePage({super.key});

  @override
  State<FavNotePage> createState() => _FavNotePageState();
}

class _FavNotePageState extends State<FavNotePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TabBar(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                splashFactory: NoSplash.splashFactory,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                controller: _tabController,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                dividerHeight: 0,
                indicatorWeight: 0,
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TabBarTheme.of(context)
                        .labelStyle
                        ?.copyWith(fontSize: 14) ??
                    const TextStyle(fontSize: 14),
                labelColor: Theme.of(context).colorScheme.onSecondaryContainer,
                unselectedLabelColor: Theme.of(context).colorScheme.outline,
                tabs: [
                  Tab(text: '未发布笔记'),
                  Tab(text: '公开笔记'),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
                visualDensity: VisualDensity(horizontal: -2, vertical: -2),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {},
              child: const Text('管理'),
            ),
            const SizedBox(width: 12),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              FavNoteChildPage(isPublish: false),
              FavNoteChildPage(isPublish: true),
            ],
          ),
        ),
      ],
    );
  }
}
