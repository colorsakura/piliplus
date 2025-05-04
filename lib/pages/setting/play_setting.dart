import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:PiliPlus/services/service_locator.dart';
import 'package:flutter/material.dart';

class PlaySetting extends StatefulWidget {
  const PlaySetting({super.key, this.showAppBar});

  final bool? showAppBar;

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
      appBar: widget.showAppBar == false
          ? null
          : AppBar(title: const Text('播放器设置')),
      body: ListView(
        children: [
          ...playSettings.map((item) => item.widget),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 80),
        ],
      ),
    );
  }
}
