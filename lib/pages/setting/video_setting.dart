import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/models/video/play/quality.dart';
import 'package:PiliPalaX/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPalaX/plugin/pl_player/index.dart';
import 'package:PiliPalaX/utils/storage.dart';

import '../../models/video/play/subtitle.dart';
import 'widgets/switch_item.dart';

class VideoSetting extends StatefulWidget {
  const VideoSetting({super.key});

  @override
  State<VideoSetting> createState() => _VideoSettingState();
}

class _VideoSettingState extends State<VideoSetting> {
  Box setting = GStrorage.setting;
  late dynamic defaultVideoQa;
  late dynamic defaultAudioQa;
  late dynamic defaultDecode;
  late dynamic secondDecode;

  @override
  void initState() {
    super.initState();
    defaultVideoQa = setting.get(SettingBoxKey.defaultVideoQa,
        defaultValue: VideoQuality.values.last.code);
    defaultAudioQa = setting.get(SettingBoxKey.defaultAudioQa,
        defaultValue: AudioQuality.values.last.code);
    defaultDecode = setting.get(SettingBoxKey.defaultDecode,
        defaultValue: VideoDecodeFormats.values.last.code);
    secondDecode = setting.get(SettingBoxKey.secondDecode,
        defaultValue: VideoDecodeFormats.values[1].code);
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '音视频设置',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: ListView(
        children: [
          const SetSwitchItem(
            title: '开启硬解',
            subTitle: '以较低功耗播放视频，若遇异常卡死，请尝试关闭',
            setKey: SettingBoxKey.enableHA,
            defaultVal: true,
          ),
          const SetSwitchItem(
            title: '亮度记忆',
            subTitle: '返回时自动调整视频亮度',
            setKey: SettingBoxKey.enableAutoBrightness,
            defaultVal: false,
          ),
          const SetSwitchItem(
            title: '免登录1080P',
            subTitle: '免登录查看1080P视频',
            setKey: SettingBoxKey.p1080,
            defaultVal: true,
          ),
          const SetSwitchItem(
            title: 'CDN优化',
            subTitle: '使用优质CDN线路',
            setKey: SettingBoxKey.enableCDN,
            defaultVal: true,
          ),
          ListTile(
            dense: false,
            title: Text('默认画质', style: titleStyle),
            subtitle: Text(
              '当前画质：${VideoQualityCode.fromCode(defaultVideoQa)!.description!}',
              style: subTitleStyle,
            ),
            onTap: () async {
              int? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<int>(
                      title: '默认画质',
                      value: defaultVideoQa,
                      values: VideoQuality.values.reversed.map((e) {
                        return {'title': e.description, 'value': e.code};
                      }).toList());
                },
              );
              if (result != null) {
                defaultVideoQa = result;
                setting.put(SettingBoxKey.defaultVideoQa, result);
                setState(() {});
              }
            },
          ),
          ListTile(
            dense: false,
            title: Text('默认音质', style: titleStyle),
            subtitle: Text(
              '当前音质：${AudioQualityCode.fromCode(defaultAudioQa)!.description!}',
              style: subTitleStyle,
            ),
            onTap: () async {
              int? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<int>(
                      title: '默认音质',
                      value: defaultAudioQa,
                      values: AudioQuality.values.reversed.map((e) {
                        return {'title': e.description, 'value': e.code};
                      }).toList());
                },
              );
              if (result != null) {
                defaultAudioQa = result;
                setting.put(SettingBoxKey.defaultAudioQa, result);
                setState(() {});
              }
            },
          ),
          ListTile(
            dense: false,
            title: Text('首选解码格式', style: titleStyle),
            subtitle: Text(
              '首选解码格式：${VideoDecodeFormatsCode.fromCode(defaultDecode)!.description!}，请根据设备支持情况与需求调整',
              style: subTitleStyle,
            ),
            onTap: () async {
              String? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<String>(
                      title: '默认解码格式',
                      value: defaultDecode,
                      values: VideoDecodeFormats.values.map((e) {
                        return {'title': e.description, 'value': e.code};
                      }).toList());
                },
              );
              if (result != null) {
                defaultDecode = result;
                setting.put(SettingBoxKey.defaultDecode, result);
                setState(() {});
              }
            },
          ),
          ListTile(
            dense: false,
            title: Text('次选解码格式', style: titleStyle),
            subtitle: Text(
              '非杜比视频次选：${VideoDecodeFormatsCode.fromCode(secondDecode)!.description!}，仍无则选择首个提供的解码格式',
              style: subTitleStyle,
            ),
            onTap: () async {
              String? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<String>(
                      title: '次选解码格式',
                      value: secondDecode,
                      values: VideoDecodeFormats.values.map((e) {
                        return {'title': e.description, 'value': e.code};
                      }).toList());
                },
              );
              if (result != null) {
                secondDecode = result;
                setting.put(SettingBoxKey.secondDecode, result);
                setState(() {});
              }
            },
          ),
          if (Platform.isAndroid)
            const SetSwitchItem(
              title: '优先使用 OpenSL ES 输出音频',
              subTitle: '关闭则优先使用AudioTrack输出音频（此项即mpv的--ao）',
              setKey: SettingBoxKey.useOpenSLES,
              defaultVal: true,
            ),
          const SetSwitchItem(
            title: '扩大缓冲区',
            subTitle: '默认缓冲区为视频5MB/直播32MB，开启后为视频32MB/直播64MB，但会延长首次加载时间',
            setKey: SettingBoxKey.expandBuffer,
            defaultVal: false,
          ),
        ],
      ),
    );
  }
}
