import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class StyleSetting extends StatelessWidget {
  const StyleSetting({super.key, this.showAppBar});

  final bool? showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar == false ? null : AppBar(title: Text('外观设置')),
      body: ListView(
        children: [
          ...styleSettings.map((item) => item.widget),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 80),
        ],
      ),
    );
  }
}
