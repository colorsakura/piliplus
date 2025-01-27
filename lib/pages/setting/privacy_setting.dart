import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class PrivacySetting extends StatelessWidget {
  const PrivacySetting({super.key, this.showAppBar});

  final bool? showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar == false ? null : AppBar(title: const Text('隐私设置')),
      body: ListView(
        children: [
          ...privacySettings.map((item) => item.widget),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 80),
        ],
      ),
    );
  }
}
