import 'package:PiliPalaX/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/services/service_locator.dart';

class PlaySetting extends StatefulWidget {
  const PlaySetting({super.key});

  @override
  State<PlaySetting> createState() => _PlaySettingState();
}

class _PlaySettingState extends State<PlaySetting> {
  @override
  void dispose() {
    super.dispose();

    // 重新验证媒体通知后台播放设置
    videoPlayerServiceHandler.revalidateSetting();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('播放器设置')),
      body: ListView(
        children: playSettings.map((item) => item.widget).toList(),
      ),
    );
  }
}
