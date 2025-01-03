import 'package:PiliPalaX/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class PrivacySetting extends StatelessWidget {
  const PrivacySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('隐私设置')),
      body: ListView(
        children: privacySettings.map((item) => item.widget).toList(),
      ),
    );
  }
}
