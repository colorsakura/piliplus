import 'package:PiliPalaX/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class StyleSetting extends StatelessWidget {
  const StyleSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('外观设置')),
      body: ListView(
        children: styleSettings.map((item) => item.widget).toList(),
      ),
    );
  }
}
