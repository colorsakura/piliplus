import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/pages/fan/view.dart';
import 'package:PiliPlus/pages/follow/child_view.dart';
import 'package:PiliPlus/pages/follow_search/view.dart';
import 'package:PiliPlus/pages/share/view.dart' show UserModel;
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage>
    with SingleTickerProviderStateMixin {
  final mid = Accounts.main.mid;
  late final _controller = TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onSelect(UserModel userModel) {
    Get.back(result: userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通讯录'),
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            Tab(text: '我的关注'),
            Tab(text: '我的粉丝'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () async {
              UserModel? userModel = await Get.dialog(
                FollowSearchPage(mid: mid),
                useSafeArea: false,
                transitionDuration: const Duration(milliseconds: 120),
              );
              if (userModel != null) {
                Get.back(result: userModel);
              }
            },
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: tabBarView(
        controller: _controller,
        children: [
          FollowChildPage(mid: mid, onSelect: onSelect),
          FansPage(mid: mid, onSelect: onSelect),
        ],
      ),
    );
  }
}
