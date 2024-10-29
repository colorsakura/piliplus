// 工具函数
// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/http/search.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/bangumi/info.dart';
import 'package:PiliPalaX/models/common/search_type.dart';
import 'package:PiliPalaX/pages/video/detail/introduction/widgets/group_panel.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../http/index.dart';
import '../models/github/latest.dart';

class Utils {
  static final Random random = Random();

  static bool isDefault(int attr) {
    return (attr & 2) == 0;
  }

  static bool isPublic(int attr) {
    return (attr & 1) == 0;
  }

  static Future actionRelationMod({
    required BuildContext context,
    required dynamic mid,
    required bool isFollow,
    required Function callback,
  }) async {
    if (mid == null) {
      return;
    }
    feedBack();
    if (!isFollow) {
      var res = await VideoHttp.relationMod(
        mid: mid,
        act: 1,
        reSrc: 11,
      );
      SmartDialog.showToast(res['status'] ? "关注成功" : res['msg']);
      if (res['status']) {
        callback(1);
        // followStatus['attribute'] = 2;
        // followStatus.refresh();
      }
    } else {
      dynamic result = await VideoHttp.hasFollow(mid: mid);
      if (result['status'] && context.mounted) {
        Map followStatus = result['data'];
        showDialog(
          context: context,
          builder: (_) {
            bool isSpecialFollowed = followStatus['special'] == 1;
            String text = isSpecialFollowed ? '移除特别关注' : '加入特别关注';
            return AlertDialog(
              clipBehavior: Clip.hardEdge,
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      final res = await MemberHttp.specialAction(
                        fid: mid,
                        isAdd: !isSpecialFollowed,
                      );
                      if (res['status']) {
                        // followStatus['special'] = isSpecialFollowed ? 0 : 1;
                        // List tags = followStatus['tag'] ?? [];
                        // if (isSpecialFollowed) {
                        //   tags.remove(-10);
                        // } else {
                        //   tags.add(-10);
                        // }
                        // followStatus['tag'] = tags;
                        // followStatus.refresh();
                        SmartDialog.showToast('$text成功');
                        if (isSpecialFollowed) {
                          callback(1);
                        } else {
                          callback(2);
                        }
                      } else {
                        SmartDialog.showToast(res['msg']);
                      }
                    },
                    title: Text(
                      text,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      dynamic result = await showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        // transitionAnimationController: AnimationController(
                        //   duration: const Duration(milliseconds: 200),
                        //   vsync: this,
                        // ),
                        sheetAnimationStyle: AnimationStyle(curve: Curves.ease),
                        builder: (BuildContext context) {
                          return DraggableScrollableSheet(
                            minChildSize: 0,
                            maxChildSize: 1,
                            initialChildSize: 0.7,
                            snap: true,
                            expand: false,
                            snapSizes: const [0.7],
                            builder: (BuildContext context,
                                ScrollController scrollController) {
                              return GroupPanel(
                                mid: mid,
                                tags: followStatus['tag'],
                                scrollController: scrollController,
                              );
                            },
                          );
                        },
                      );
                      if (result == true) {
                        callback(2);
                      } else if (result == false) {
                        callback(1);
                      }
                    },
                    title: const Text(
                      '设置分组',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () async {
                      Get.back();
                      var res = await VideoHttp.relationMod(
                        mid: mid,
                        act: 2,
                        reSrc: 11,
                      );
                      SmartDialog.showToast(
                          res['status'] ? "取消关注成功" : res['msg']);
                      if (res['status']) {
                        callback(0);
                        // followStatus['attribute'] = 0;
                        // followStatus.refresh();
                      }
                    },
                    title: const Text(
                      '取消关注',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    }

    // MemberController _ = Get.put<MemberController>(MemberController(mid: mid),
    //     tag: mid.toString());
    // await _.getInfo();
    // if (context.mounted) await _.actionRelationMod(context);
    // followStatus['attribute'] = _.attribute.value;
    // followStatus.refresh();
    // Get.delete<MemberController>(tag: mid.toString());
  }

  static String generateRandomString(int length) {
    const characters = '0123456789abcdefghijklmnopqrstuvwxyz';
    Random random = Random();

    return String.fromCharCodes(Iterable.generate(length,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
  }

  static String genAuroraEid(int uid) {
    if (uid == 0) {
      return ''; // Return null for a UID of 0
    }

    // 1. Convert UID to a byte array.
    List<int> midByte = utf8.encode(uid.toString());
    List<int> resultByte = List<int>.filled(midByte.length, 0);

    // 2. XOR each byte with the corresponding byte from the key.
    const key = 'ad1va46a7lza';
    for (int i = 0; i < midByte.length; i++) {
      resultByte[i] = midByte[i] ^ key.codeUnitAt(i % key.length);
    }

    // 3. Perform Base64 encoding without padding.
    String base64Encoded =
        base64.encode(resultByte).replaceAll('=', ''); // Remove padding

    // Return the resulting x-bili-aurora-eid.
    return base64Encoded;
  }

  static String genRandomString(int length) {
    const characters = '0123456789abcdefghijklmnopqrstuvwxyz';
    Random random = Random();
    return List.generate(
            length, (index) => characters[random.nextInt(characters.length)])
        .join();
  }

  static String genTraceId() {
    // 1. Generate a 32-character random string (random_id).
    String randomId = genRandomString(32);

    // 2. Take the first 24 characters of random_id as random_trace_id.
    StringBuffer randomTraceId = StringBuffer(randomId.substring(0, 24));

    // 3. Initialize an array b_arr with a length of 3, initial values are 0.
    List<int> bArr = List.filled(3, 0);

    // Get the current timestamp.
    int ts = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    // Using a loop to traverse b_arr from high to low.
    for (int i = 2; i >= 0; i--) {
      ts >>= 8; // Right shift ts by 8 bits.
      bArr[i] = (ts ~/ 128) % 2 == 0
          ? (ts % 256)
          : (ts % 256) - 256; // Assign value based on condition.
    }

    // 4. Convert each element in b_arr to a two-digit hexadecimal string and append to random_trace_id.
    for (int value in bArr) {
      randomTraceId
          .write(value.toRadixString(16).padLeft(2, '0')); // Convert to hex.
    }

    // 5. Append the 31st and 32nd characters of random_id to random_trace_id.
    randomTraceId.write(randomId.substring(30, 32));

    // 6. Finally, concatenate as '{random_trace_id}:{random_trace_id[16..32]}:0:0'.
    String randomTraceIdFinal =
        '${randomTraceId.toString()}:${randomTraceId.toString().substring(16, 32)}:0:0';

    return randomTraceIdFinal;
  }

  static void viewBangumi({
    dynamic seasonId,
    dynamic epId,
  }) async {
    SmartDialog.showLoading(msg: '资源获取中');
    var result = await SearchHttp.bangumiInfo(seasonId: seasonId, epId: epId);
    SmartDialog.dismiss();
    if (result['status']) {
      if (result['data'].episodes.isEmpty) {
        SmartDialog.showToast('资源加载失败');
        return;
      }
      // epId episode -> progress episode -> first episode
      EpisodeItem? episode;
      if (epId != null) {
        EpisodeItem? e = (result['data'].episodes as List).firstWhereOrNull(
          (item) => item.epId == epId,
        );
        if (e != null) {
          episode = e;
        }
      }
      episode ??= (result['data'].episodes as List).firstWhereOrNull(
            (item) =>
                item.epId == result['data'].userStatus?.progress?.lastEpId,
          ) ??
          result['data'].episodes.first;
      dynamic bvid = episode?.bvid;
      dynamic cid = episode?.cid;
      dynamic pic = episode?.cover;
      dynamic heroTag = Utils.makeHeroTag(cid);
      Utils.toDupNamed(
        '/video?bvid=$bvid&cid=$cid&seasonId=${result['data'].seasonId}&epId=${episode?.epId}',
        arguments: {
          'pic': pic,
          'heroTag': heroTag,
          'videoType': SearchType.media_bangumi,
          'bangumiItem': result['data'],
        },
      );
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  static void toDupNamed(
    String page, {
    dynamic arguments,
    Map<String, String>? parameters,
  }) {
    Get.toNamed(
      page,
      arguments: arguments,
      parameters: parameters,
      preventDuplicates: false,
    );
  }

  static void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    SmartDialog.showToast('已复制');
  }

  static launchURL(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      )) {
        SmartDialog.showToast('Could not launch $url');
      }
    } catch (e) {
      SmartDialog.showToast(e.toString());
    }
  }

  static Color get vipColor {
    return GStorage.brightness == Brightness.light
        ? const Color(0xFFFF6699)
        : const Color(0xFFD44E7D);
  }

  static Future<String> getCookiePath() async {
    final Directory tempDir = await getApplicationSupportDirectory();
    final String tempPath = "${tempDir.path}/.plpl/";
    final Directory dir = Directory(tempPath);
    final bool b = await dir.exists();
    if (!b) {
      dir.createSync(recursive: true);
    }
    return tempPath;
  }

  static String numFormat(dynamic number) {
    if (number == null) {
      return '00:00';
    }
    if (number is String) {
      return number;
    }
    if (number >= 100000000) {
      return '${(number / 100000000).toStringAsFixed(1)}亿';
    } else if (number > 10000) {
      double result = number / 10000;
      String format = result.toStringAsFixed(1);
      if (format.endsWith('.0')) {
        return '${result.toInt()}万';
      } else {
        return '$format万';
      }
    } else {
      return number.toString();
    }
  }

  static String durationReadFormat(String duration) {
    List<String> durationParts = duration.split(':');

    if (durationParts.length == 3) {
      if (durationParts[0] != '00') {
        return '${int.parse(durationParts[0])}小时${durationParts[1]}分钟${durationParts[2]}秒';
      }
      durationParts.removeAt(0);
    }
    if (durationParts.length == 2) {
      if (durationParts[0] != '00') {
        return '${int.parse(durationParts[0])}分钟${durationParts[1]}秒';
      }
      durationParts.removeAt(0);
    }
    return '${int.parse(durationParts[0])}秒';
  }

  static String videoItemSemantics(dynamic videoItem) {
    String semanticsLabel = "";
    bool emptyStatCheck(dynamic stat) {
      return stat == null ||
          stat == '' ||
          stat == 0 ||
          stat == '0' ||
          stat == '-';
    }

    if (videoItem.runtimeType.toString() == "RecVideoItemAppModel") {
      if (videoItem.goto == 'picture') {
        semanticsLabel += '动态,';
      } else if (videoItem.goto == 'bangumi') {
        semanticsLabel += '番剧,';
      }
    }
    if (videoItem.title is String) {
      semanticsLabel += videoItem.title;
    } else {
      semanticsLabel +=
          videoItem.title.map((e) => e['text'] as String).join('');
    }

    if (!emptyStatCheck(videoItem.stat.view)) {
      semanticsLabel += ',${Utils.numFormat(videoItem.stat.view)}';
      semanticsLabel +=
          (videoItem.runtimeType.toString() == "RecVideoItemAppModel" &&
                  videoItem.goto == 'picture')
              ? '浏览'
              : '播放';
    }
    if (!emptyStatCheck(videoItem.stat.danmu)) {
      semanticsLabel += ',${Utils.numFormat(videoItem.stat.danmu)}弹幕';
    }
    if (videoItem.rcmdReason != null) {
      semanticsLabel += ',${videoItem.rcmdReason}';
    }
    if (!emptyStatCheck(videoItem.duration) &&
        (videoItem.duration is! int || videoItem.duration > 0)) {
      semanticsLabel +=
          ',时长${Utils.durationReadFormat(Utils.timeFormat(videoItem.duration))}';
    }
    if (videoItem.runtimeType.toString() != "RecVideoItemAppModel" &&
        videoItem.pubdate != null) {
      semanticsLabel +=
          ',${Utils.dateFormat(videoItem.pubdate!, formatType: 'day')}';
    }
    if (videoItem.owner.name != '') {
      semanticsLabel += ',Up主：${videoItem.owner.name}';
    }
    if ((videoItem.runtimeType.toString() == "RecVideoItemAppModel" ||
            videoItem.runtimeType.toString() == "RecVideoItemModel") &&
        videoItem.isFollowed == 1) {
      semanticsLabel += ',已关注';
    }
    return semanticsLabel;
  }

  static String timeFormat(dynamic time) {
    if (time is String && time.contains(':')) {
      return time;
    }
    if (time == null || time == 0) {
      return '00:00';
    }
    int hour = time ~/ 3600;
    int minute = (time % 3600) ~/ 60;
    int second = time % 60;
    String paddingStr(int number) {
      return number.toString().padLeft(2, '0');
    }

    return '${hour > 0 ? "${paddingStr(hour)}:" : ""}${paddingStr(minute)}:${paddingStr(second)}';
  }

  static String shortenChineseDateString(String date) {
    if (date.contains("年")) return '${date.split("年").first}年';
    return date;
  }

  // 完全相对时间显示
  static String formatTimestampToRelativeTime(timeStamp) {
    var difference = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));

    if (difference.inDays > 365) {
      return '${difference.inDays ~/ 365}年前';
    } else if (difference.inDays > 30) {
      return '${difference.inDays ~/ 30}个月前';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}天前';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}小时前';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}分钟前';
    } else {
      return '刚刚';
    }
  }

  // 时间显示，刚刚，x分钟前
  static String dateFormat(timeStamp, {formatType = 'list'}) {
    if (timeStamp == 0 || timeStamp == null || timeStamp == '') {
      return '';
    }
    // 当前时间
    int time = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    // 对比
    int distance = (time - timeStamp).toInt();
    // 当前年日期
    String currentYearStr = 'MM月DD日 hh:mm';
    String lastYearStr = 'YY年MM月DD日 hh:mm';
    if (formatType == 'detail') {
      currentYearStr = 'MM-DD hh:mm';
      lastYearStr = 'YY-MM-DD hh:mm';
      return CustomStamp_str(
          timestamp: timeStamp, date: lastYearStr, toInt: false);
    } else if (formatType == 'day') {
      if (distance <= 43200) {
        return CustomStamp_str(
          timestamp: timeStamp,
          date: 'hh:mm',
          toInt: true,
        );
      }
      return CustomStamp_str(
        timestamp: timeStamp,
        date: 'YY-MM-DD',
        toInt: true,
      );
    }
    if (distance <= 60) {
      return '刚刚';
    } else if (distance <= 3600) {
      return '${(distance / 60).floor()}分钟前';
    } else if (distance <= 43200) {
      return '${(distance / 60 / 60).floor()}小时前';
    } else if (DateTime.fromMillisecondsSinceEpoch(time * 1000).year ==
        DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000).year) {
      return CustomStamp_str(
          timestamp: timeStamp, date: currentYearStr, toInt: false);
    } else {
      return CustomStamp_str(
          timestamp: timeStamp, date: lastYearStr, toInt: false);
    }
  }

  // 时间戳转时间
  static String CustomStamp_str({
    int? timestamp, // 为空则显示当前时间
    String? date, // 显示格式，比如：'YY年MM月DD日 hh:mm:ss'
    bool toInt = true, // 去除0开头
  }) {
    timestamp ??= (DateTime.now().millisecondsSinceEpoch / 1000).round();
    String timeStr =
        (DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)).toString();

    dynamic dateArr = timeStr.split(' ')[0];
    dynamic timeArr = timeStr.split(' ')[1];

    String YY = dateArr.split('-')[0];
    String MM = dateArr.split('-')[1];
    String DD = dateArr.split('-')[2];

    String hh = timeArr.split(':')[0];
    String mm = timeArr.split(':')[1];
    String ss = timeArr.split(':')[2];

    ss = ss.split('.')[0];

    // 去除0开头
    if (toInt) {
      MM = (int.parse(MM)).toString();
      DD = (int.parse(DD)).toString();
      hh = (int.parse(hh)).toString();
      // mm = (int.parse(mm)).toString();
    }

    if (date == null) {
      return timeStr;
    }

    date = date
        .replaceAll('YY', YY)
        .replaceAll('MM', MM)
        .replaceAll('DD', DD)
        .replaceAll('hh', hh)
        .replaceAll('mm', mm)
        .replaceAll('ss', ss);
    // if (int.parse(YY) == DateTime.now().year &&
    //     int.parse(MM) == DateTime.now().month) {
    //   // 当天
    //   if (int.parse(DD) == DateTime.now().day) {
    //     return '今天';
    //   }
    // }
    return date;
  }

  static String makeHeroTag(v) {
    return v.toString() + random.nextInt(9999).toString();
  }

  static int duration(String duration) {
    List timeList = duration.split(':');
    int len = timeList.length;
    if (len == 2) {
      return int.parse(timeList[0]) * 60 + int.parse(timeList[1]);
    }
    if (len == 3) {
      return int.parse(timeList[0]) * 3600 +
          int.parse(timeList[1]) * 60 +
          int.parse(timeList[2]);
    }
    return 0;
  }

  static int findClosestNumber(int target, List<int> numbers) {
    int minDiff = 127;
    int? closestNumber;
    try {
      for (int number in numbers) {
        int diff = target - number;
        if (diff < 0) {
          continue;
        }
        if (diff < minDiff) {
          minDiff = diff;
          closestNumber = number;
        }
      }
    } catch (_) {
    } finally {
      closestNumber ??= numbers.last;
    }
    return closestNumber;
  }

  // 版本对比
  static bool needUpdate(localVersion, remoteVersion) {
    return localVersion != remoteVersion;
  }

  // 检查更新
  static Future<bool> checkUpdate() async {
    SmartDialog.dismiss();
    var currentInfo = await PackageInfo.fromPlatform();
    var result = await Request().get(Api.latestApp, extra: {'ua': 'mob'});
    if (result.data.isEmpty) {
      SmartDialog.showToast('检查更新失败，github接口未返回数据，请检查网络');
      return false;
    }
    LatestDataModel data = LatestDataModel.fromJson(result.data[0]);
    String buildNumber = currentInfo.buildNumber;
    String remoteVersion = data.tagName!;
    if (Platform.isAndroid) {
      buildNumber = buildNumber.substring(0, buildNumber.length - 1);
    } else if (Platform.isIOS) {
      remoteVersion = remoteVersion.replaceAll('-beta', '');
    }
    bool isUpdate =
        Utils.needUpdate("${currentInfo.version}+$buildNumber", remoteVersion);
    if (isUpdate) {
      SmartDialog.show(
        animationType: SmartAnimationType.centerFade_otherSlide,
        builder: (context) {
          return AlertDialog(
            title: const Text('🎉 发现新版本 '),
            content: SizedBox(
              height: 280,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.tagName!,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Text(data.body!),
                    TextButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                                "https://github.com/bggRGjQaUbCoE/PiliPalaX/commits/main/"),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Text(
                          "点此查看完整更新（即commit）内容",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        )),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  GStorage.setting.put(SettingBoxKey.autoUpdate, false);
                  SmartDialog.dismiss();
                },
                child: Text(
                  '不再提醒',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.outline),
                ),
              ),
              TextButton(
                onPressed: () => SmartDialog.dismiss(),
                child: Text(
                  '取消',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.outline),
                ),
              ),
              TextButton(
                onPressed: () => matchVersion(data),
                child: const Text('Github'),
              ),
            ],
          );
        },
      );
    }
    return true;
  }

  // 下载适用于当前系统的安装包
  static Future matchVersion(data) async {
    await SmartDialog.dismiss();
    // 获取设备信息
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      // [arm64-v8a]
      String abi = androidInfo.supportedAbis.first;
      late String downloadUrl;
      if (data.assets.isNotEmpty) {
        for (var i in data.assets) {
          if (i.downloadUrl.contains(abi)) {
            downloadUrl = i.downloadUrl;
          }
        }
        // 应用外下载
        launchUrl(
          Uri.parse(downloadUrl),
          mode: LaunchMode.externalApplication,
        );
      }
    }
  }

  // 时间戳转时间
  static tampToSeektime(number) {
    int hours = number ~/ 60;
    int minutes = number % 60;

    String formattedHours = hours.toString().padLeft(2, '0');
    String formattedMinutes = minutes.toString().padLeft(2, '0');

    return '$formattedHours:$formattedMinutes';
  }

  static double getSheetHeight(BuildContext context) {
    double height = context.height.abs();
    double width = context.width.abs();
    if (height > width) {
      //return height * 0.7;
      double paddingTop = MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.single)
          .padding
          .top;
      print("paddingTop");
      print(paddingTop);
      paddingTop += width * 9 / 16;
      return height - paddingTop;
    }
    //横屏状态
    return height;
  }

  static String appSign(
      Map<String, String> params, String appkey, String appsec) {
    params['appkey'] = appkey;
    var searchParams = Uri(queryParameters: params).query;
    var sortedParams = searchParams.split('&')..sort();
    var sortedQueryString = sortedParams.join('&');

    var appsecString = sortedQueryString + appsec;
    var md5Digest = md5.convert(utf8.encode(appsecString));
    var md5String = md5Digest.toString(); // 获取MD5哈希值

    return md5String;
  }

  static List<int> generateRandomBytes(int minLength, int maxLength) {
    return List<int>.generate(random.nextInt(maxLength - minLength + 1),
        (_) => random.nextInt(0x60) + 0x20);
  }

  static String base64EncodeRandomString(int minLength, int maxLength) {
    List<int> randomBytes = generateRandomBytes(minLength, maxLength);
    return base64.encode(randomBytes);
  }
}
