import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:PiliPlus/build_config.dart';
import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/api.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/bangumi/info.dart';
import 'package:PiliPlus/models/common/search_type.dart';
import 'package:PiliPlus/pages/dynamics/controller.dart';
import 'package:PiliPlus/pages/home/controller.dart';
import 'package:PiliPlus/pages/media/controller.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/pages/video/detail/introduction/widgets/group_panel.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as web;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

class Utils {
  static final Random random = Random();

  static const channel = MethodChannel("PiliPlus");

  static void showCopyTextDialog(text) {
    Get.dialog(
      AlertDialog(
        content: SelectableText('$text'),
      ),
    );
  }

  static Future<dynamic> getWwebid(mid) async {
    try {
      dynamic response =
          await Request().get('${HttpString.spaceBaseUrl}/$mid/dynamic');
      dom.Document document = html_parser.parse(response.data);
      dom.Element? scriptElement =
          document.querySelector('script#__RENDER_DATA__');
      return jsonDecode(
          Uri.decodeComponent(scriptElement?.text ?? ''))['access_id'];
    } catch (e) {
      debugPrint('failed to get wwebid: $e');
      return null;
    }
  }

  static Future afterLoginByApp(
      Map<String, dynamic> token_info, cookie_info) async {
    try {
      GStorage.localCache.put(LocalCacheKey.accessKey, {
        'mid': token_info['mid'],
        'value': token_info['access_token'] ?? token_info['value'],
        'refresh': token_info['refresh_token'] ?? token_info['refresh']
      });
      List<dynamic> cookieInfo = cookie_info['cookies'];
      List<Cookie> cookies = [];
      String cookieStrings = cookieInfo.map((cookie) {
        String cstr =
            '${cookie['name']}=${cookie['value']};Domain=.bilibili.com;Path=/;';
        cookies.add(Cookie.fromSetCookieValue(cstr));
        return cstr;
      }).join('');
      List<String> urls = [
        HttpString.baseUrl,
        HttpString.apiBaseUrl,
        HttpString.tUrl
      ];
      for (var url in urls) {
        await Request.cookieManager.cookieJar
            .saveFromResponse(Uri.parse(url), cookies);
      }
      Request.dio.options.headers['cookie'] = cookieStrings;
      await WebviewCookieManager().setCookies(cookies);
      for (Cookie item in cookies) {
        await web.CookieManager().setCookie(
          url: web.WebUri(item.domain ?? ''),
          name: item.name,
          value: item.value,
          path: item.path ?? '',
          domain: item.domain,
          isSecure: item.secure,
          isHttpOnly: item.httpOnly,
        );
      }
    } catch (e) {
      SmartDialog.showToast('设置登录态失败，$e');
    }
    final result = await UserHttp.userInfo();
    if (result['status'] && result['data'].isLogin) {
      SmartDialog.showToast('登录成功，当前采用「'
          '${GStorage.setting.get(SettingBoxKey.defaultRcmdType, defaultValue: 'app')}'
          '端」推荐');
      await GStorage.userInfo.put('userInfoCache', result['data']);
      try {
        Get.find<MineController>()
          ..isLogin.value = true
          ..queryUserInfo();
      } catch (_) {}

      try {
        Get.find<HomeController>()
          ..isLogin.value = true
          ..userFace.value = result['data'].face;
      } catch (_) {}

      try {
        Get.find<DynamicsController>()
          ..isLogin.value = true
          ..ownerMid = result['data'].mid
          ..face = result['data'].face
          ..onRefresh();
      } catch (_) {}

      try {
        Get.find<MediaController>()
          ..mid = result['data'].mid
          ..onRefresh();
      } catch (_) {}
    } else {
      // 获取用户信息失败
      SmartDialog.showNotify(
          msg: '登录失败，请检查cookie是否正确，${result['message']}',
          notifyType: NotifyType.warning);
    }
  }

  static bool isStringNumeric(str) {
    RegExp numericRegex = RegExp(r'^[\d\.]+$');
    return numericRegex.hasMatch(str.toString());
  }

  static ReplyInfo replyCast(res) {
    Map? emote = res['content']['emote'];
    emote?.forEach((key, value) {
      value['size'] = value['meta']['size'];
    });
    return ReplyInfo.create()
      ..mergeFromProto3Json(
        res
          ..['id'] = res['rpid']
          ..['member']['name'] = res['member']['uname']
          ..['member']['face'] = res['member']['avatar']
          ..['member']['level'] = res['member']['level_info']['current_level']
          ..['member']['vipStatus'] = res['member']['vip']['vipStatus']
          ..['member']['vipType'] = res['member']['vip']['vipType']
          ..['member']['officialVerifyType'] =
              res['member']['official_verify']['type']
          ..['content']['emote'] = emote,
        ignoreUnknownFields: true,
      );
  }

  static bool isDefault(int attr) {
    return (attr & 2) == 0;
  }

  static String isPublicText(int attr) {
    return isPublic(attr) ? '公开' : '私密';
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
          builder: (context) {
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
        episode = (result['data'].episodes as List).firstWhereOrNull(
          (item) {
            return item.epId.toString() == epId.toString();
          },
        );
      }
      episode ??= (result['data'].episodes as List).firstWhereOrNull(
            (item) =>
                item.epId == result['data'].userStatus?.progress?.lastEpId,
          ) ??
          result['data'].episodes.first;
      dynamic bvid = episode?.bvid;
      dynamic cid = episode?.cid;
      dynamic pic = episode?.cover;
      Utils.toDupNamed(
        '/video?bvid=$bvid&cid=$cid&seasonId=${result['data'].seasonId}&epId=${episode?.epId}&type=${result['data'].type}',
        arguments: {
          'pic': pic,
          'heroTag': Utils.makeHeroTag(cid),
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

  static Future copyText(
    String text, {
    bool needToast = true,
    String? toastText,
  }) async {
    Clipboard.setData(ClipboardData(text: text));
    if (needToast) {
      SmartDialog.showToast(toastText ?? '已复制');
    }
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
      number = int.tryParse(number) ?? number;
      if (number is String) {
        return number;
      }
    }

    String format(first, second) {
      double result = number / first;
      String format = result.toStringAsFixed(1);
      if (format.endsWith('.0')) {
        return '${result.toInt()}$second';
      } else {
        return '$format$second';
      }
    }

    if (number >= 100000000) {
      return format(100000000, '亿');
    } else if (number >= 10000) {
      return format(10000, '万');
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
    return date.contains("年")
        ? RegExp(r'\d+')
            .allMatches(date)
            .map((match) => match.group(0)?.length == 4
                ? match.group(0)!.substring(2)
                : match.group(0))
            .join('-')
        : date;
    // if (date.contains("年")) return '${date.split("年").first}年';
    // return date;
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
      return customStampStr(
          timestamp: timeStamp, date: lastYearStr, toInt: false);
    } else if (formatType == 'day') {
      if (distance <= 43200) {
        return customStampStr(
          timestamp: timeStamp,
          date: 'hh:mm',
          toInt: true,
        );
      }
      return customStampStr(
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
      return customStampStr(
          timestamp: timeStamp, date: currentYearStr, toInt: false);
    } else {
      return customStampStr(
          timestamp: timeStamp, date: lastYearStr, toInt: false);
    }
  }

  // 时间戳转时间
  static String customStampStr({
    int? timestamp, // 为空则显示当前时间
    String? date, // 显示格式，比如：'YY年MM月DD日 hh:mm:ss'
    bool toInt = true, // 去除0开头
  }) {
    timestamp ??= (DateTime.now().millisecondsSinceEpoch / 1000).round();
    String timeStr =
        (DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)).toString();

    dynamic dateArr = timeStr.split(' ')[0];
    dynamic timeArr = timeStr.split(' ')[1];

    // ignore: non_constant_identifier_names
    String YY = dateArr.split('-')[0];
    // ignore: non_constant_identifier_names
    String MM = dateArr.split('-')[1];
    // ignore: non_constant_identifier_names
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

  static String formatDuration(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');

    if (hours > 0) {
      String hoursStr = hours.toString().padLeft(2, '0');
      return "$hoursStr:$minutesStr:$secondsStr";
    } else {
      return "$minutesStr:$secondsStr";
    }
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
    return switch (numbers.length) {
      0 => target,
      1 => numbers.first,
      _ => numbers.reduce((a, b) {
          int diff1 = (a - target).abs();
          int diff2 = (b - target).abs();
          return diff1 == diff2
              ? max(a, b)
              : diff1 < diff2
                  ? a
                  : b;
        }),
    };
  }

  // 检查更新
  static Future checkUpdate([bool isAuto = true]) async {
    SmartDialog.dismiss();
    try {
      dynamic res = await Request().get(Api.latestApp, extra: {'ua': 'mob'});
      if (res.data.isEmpty) {
        if (isAuto.not) {
          SmartDialog.showToast('检查更新失败，GitHub接口未返回数据，请检查网络');
        }
        return;
      }
      DateTime latest = DateTime.parse(res.data[0]['created_at']);
      latest = latest.copyWith(hour: latest.hour + 8);
      DateTime current = DateTime.parse(BuildConfig.buildTime);
      if (current.compareTo(latest) < 0) {
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
                        '${res.data[0]['tag_name']}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      Text('${res.data[0]['body']}'),
                      TextButton(
                        onPressed: () {
                          launchURL(
                              'https://github.com/bggRGjQaUbCoE/PiliPlus/commits/main');
                        },
                        child: Text(
                          "点此查看完整更新(即commit)内容",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    SmartDialog.dismiss();
                    GStorage.setting.put(SettingBoxKey.autoUpdate, false);
                  },
                  child: Text(
                    '不再提醒',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: SmartDialog.dismiss,
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    onDownload(res.data[0]);
                  },
                  child: const Text('Github'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      debugPrint('failed to check update: $e');
    }
  }

  // 下载适用于当前系统的安装包
  static Future onDownload(data) async {
    await SmartDialog.dismiss();
    try {
      void download(plat) {
        if (data['assets'].isNotEmpty) {
          for (dynamic i in data['assets']) {
            if (i['name'].contains(plat)) {
              launchURL(i['browser_download_url']);
              break;
            }
          }
        }
      }

      if (Platform.isAndroid) {
        // 获取设备信息
        AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
        // [arm64-v8a]
        download(androidInfo.supportedAbis.first);
      } else {
        download('ios');
      }
    } catch (_) {
      launchURL('https://github.com/bggRGjQaUbCoE/PiliPlus/releases/latest');
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
