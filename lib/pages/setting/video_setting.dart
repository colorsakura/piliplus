import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class VideoSetting extends StatelessWidget {
  const VideoSetting({super.key, this.showAppBar});

  final bool? showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar == false ? null : AppBar(title: const Text('音视频设置')),
      body: ListView(
        children: [
          ...videoSettings.map((item) => item.widget),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 80),
        ],
      ),
    );
  }
}
