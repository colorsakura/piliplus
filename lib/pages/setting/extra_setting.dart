import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class ExtraSetting extends StatelessWidget {
  const ExtraSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('其它设置')),
      body: ListView(
        children: extraSettings.map((item) => item.widget).toList(),
      ),
    );
  }
}
