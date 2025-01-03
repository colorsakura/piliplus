import 'package:PiliPalaX/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class VideoSetting extends StatelessWidget {
  const VideoSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('音视频设置')),
      body: ListView(
        children: videoSettings.map((item) => item.widget).toList(),
      ),
    );
  }
}
