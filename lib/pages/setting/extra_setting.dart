import 'package:PiliPlus/pages/setting/models/extra_settings.dart';
import 'package:flutter/material.dart';

class ExtraSetting extends StatefulWidget {
  const ExtraSetting({super.key, this.showAppBar});

  final bool? showAppBar;

  @override
  State<ExtraSetting> createState() => _ExtraSettingState();
}

class _ExtraSettingState extends State<ExtraSetting> {
  final settings = extraSettings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: widget.showAppBar == false
          ? null
          : AppBar(title: const Text('其它设置')),
      body: ListView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewPaddingOf(context).bottom + 100,
        ),
        children: settings.map((item) => item.widget).toList(),
      ),
    );
  }
}
