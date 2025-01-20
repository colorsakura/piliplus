import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class ExtraSetting extends StatelessWidget {
  const ExtraSetting({super.key, this.showAppBar});

  final bool? showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar == false ? null : AppBar(title: Text('其它设置')),
      body: ListView(
        children: [
          ...extraSettings.map((item) => item.widget),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 80),
        ],
      ),
    );
  }
}
