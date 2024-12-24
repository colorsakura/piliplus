import 'dart:convert';
import 'dart:io';
import 'package:PiliPalaX/common/widgets/pair.dart';
import 'package:PiliPalaX/http/constants.dart';
import 'package:PiliPalaX/models/common/theme_type.dart';
import 'package:PiliPalaX/pages/member/new/controller.dart' show MemberTabType;
import 'package:PiliPalaX/pages/video/detail/controller.dart'
    show SegmentType, SegmentTypeExt, SkipType;
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:PiliPalaX/models/model_owner.dart';
import 'package:PiliPalaX/models/search/hot.dart';
import 'package:PiliPalaX/models/user/info.dart';
import 'global_data.dart';
import 'package:uuid/uuid.dart';

class GStorage {
  static late final Box<dynamic> userInfo;
  static late final Box<dynamic> historyWord;
  static late final Box<dynamic> localCache;
  static late final Box<dynamic> setting;
  static late final Box<dynamic> video;

  static bool get isLogin => userInfo.get('userInfoCache') != null;

  static List<double> get speedList => List<double>.from(
        video.get(
          VideoBoxKey.speedsList,
          defaultValue: [
            0.5,
            0.75,
            1.0,
            1.25,
            1.5,
            1.75,
            2.0,
            3.0,
          ],
        ),
      );

  static List<Pair<SegmentType, SkipType>> get blockSettings {
    List list = setting.get(
      SettingBoxKey.blockSettings,
      defaultValue: List.generate(SegmentType.values.length, (_) => 1),
    );
    return SegmentType.values
        .map((item) => Pair<SegmentType, SkipType>(
              first: item,
              second: SkipType.values[list[item.index]],
            ))
        .toList();
  }

  static List<Color> get blockColor {
    List list = setting.get(
      SettingBoxKey.blockColor,
      defaultValue: List.generate(SegmentType.values.length, (_) => ''),
    );
    return SegmentType.values
        .map((item) => list[item.index].isNotEmpty
            ? Color(
                int.tryParse('FF${list[item.index]}', radix: 16) ?? 0xFF000000)
            : item.color)
        .toList();
  }

  static double get blockLimit =>
      setting.get(SettingBoxKey.blockLimit, defaultValue: 0.0);

  static String get blockUserID {
    String blockUserID =
        setting.get(SettingBoxKey.blockUserID, defaultValue: '');
    if (blockUserID.isEmpty) {
      blockUserID = Uuid().v4().replaceAll('-', '');
      setting.put(SettingBoxKey.blockUserID, blockUserID);
    }
    return blockUserID;
  }

  static bool get blockToast =>
      setting.get(SettingBoxKey.blockToast, defaultValue: true);

  static String get blockServer => setting.get(SettingBoxKey.blockServer,
      defaultValue: HttpString.sponsorBlockBaseUrl);

  static bool get blockTrack =>
      setting.get(SettingBoxKey.blockTrack, defaultValue: true);

  static bool get checkDynamic =>
      setting.get(SettingBoxKey.checkDynamic, defaultValue: true);

  static int get dynamicPeriod =>
      setting.get(SettingBoxKey.dynamicPeriod, defaultValue: 5);

  static int get schemeVariant =>
      setting.get(SettingBoxKey.schemeVariant, defaultValue: 10);

  static double get danmakuFontScaleFS =>
      setting.get(SettingBoxKey.danmakuFontScaleFS, defaultValue: 1.2);

  static bool get danmakuMassiveMode =>
      setting.get(SettingBoxKey.danmakuMassiveMode, defaultValue: false);

  static double get subtitleFontScale =>
      setting.get(SettingBoxKey.subtitleFontScale, defaultValue: 1.0);

  static double get subtitleFontScaleFS =>
      setting.get(SettingBoxKey.subtitleFontScaleFS, defaultValue: 1.5);

  static bool get grpcReply =>
      setting.get(SettingBoxKey.grpcReply, defaultValue: true);

  static bool get showViewPoints =>
      setting.get(SettingBoxKey.showViewPoints, defaultValue: true);

  static bool get showRelatedVideo =>
      setting.get(SettingBoxKey.showRelatedVideo, defaultValue: true);

  static bool get showVideoReply =>
      setting.get(SettingBoxKey.showVideoReply, defaultValue: true);

  static bool get showBangumiReply =>
      setting.get(SettingBoxKey.showBangumiReply, defaultValue: true);

  static bool get alwaysExapndIntroPanel =>
      setting.get(SettingBoxKey.alwaysExapndIntroPanel, defaultValue: false);

  static bool get exapndIntroPanelH =>
      setting.get(SettingBoxKey.exapndIntroPanelH, defaultValue: false);

  static List<double> get dynamicDetailRatio =>
      setting.get(SettingBoxKey.dynamicDetailRatio, defaultValue: [60.0, 40.0]);

  static List<int> get blackMidsList => List<int>.from(GStorage.localCache
      .get(LocalCacheKey.blackMidsList, defaultValue: <int>[]));

  static void setBlackMidsList(blackMidsList) {
    if (blackMidsList is! List<int>) return;
    GStorage.localCache.put(LocalCacheKey.blackMidsList, blackMidsList);
  }

  static MemberTabType get memberTab => MemberTabType
      .values[setting.get(SettingBoxKey.memberTab, defaultValue: 0)];

  static int get themeType =>
      setting.get(SettingBoxKey.themeMode, defaultValue: ThemeType.system.code);

  static ThemeMode get themeMode {
    return switch (themeType) {
      0 => ThemeMode.light,
      1 => ThemeMode.dark,
      _ => ThemeMode.system
    };
  }

  // static Brightness get brightness {
  //   return switch (_themeMode) {
  //     0 => Brightness.light,
  //     1 => Brightness.dark,
  //     _ => PlatformDispatcher.instance.platformBrightness
  //   };
  // }

  static Future<void> init() async {
    final Directory dir = await getApplicationSupportDirectory();
    final String path = dir.path;
    await Hive.initFlutter('$path/hive');
    regAdapter();
    // 登录用户信息
    userInfo = await Hive.openBox(
      'userInfo',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 2;
      },
    );
    // 本地缓存
    localCache = await Hive.openBox(
      'localCache',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 4;
      },
    );
    // 设置
    setting = await Hive.openBox('setting');
    // 搜索历史
    historyWord = await Hive.openBox(
      'historyWord',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 10;
      },
    );
    // 视频设置
    video = await Hive.openBox('video');
    // 设置全局变量
    GlobalData().imgQuality = setting.get(
      SettingBoxKey.defaultPicQa,
      defaultValue: 10,
    );
    // GlobalData().themeMode = setting.get(
    //   SettingBoxKey.themeMode,
    //   defaultValue: ThemeType.system.code,
    // );
    GlobalData().grpcReply = grpcReply;
  }

  static Future<String> exportAllSettings() async {
    return jsonEncode({
      setting.name: setting.toMap(),
      video.name: video.toMap(),
    });
  }

  static Future<void> importAllSettings(String data) async {
    final Map<String, dynamic> map = jsonDecode(data);
    await setting.clear();
    await video.clear();
    await setting.putAll(map[setting.name]);
    await video.putAll(map[video.name]);
  }

  static void regAdapter() {
    Hive.registerAdapter(OwnerAdapter());
    Hive.registerAdapter(UserInfoDataAdapter());
    Hive.registerAdapter(LevelInfoAdapter());
    Hive.registerAdapter(HotSearchModelAdapter());
    Hive.registerAdapter(HotSearchItemAdapter());
  }

  static Future<void> close() async {
    // user.compact();
    // user.close();
    userInfo.compact();
    userInfo.close();
    historyWord.compact();
    historyWord.close();
    localCache.compact();
    localCache.close();
    setting.compact();
    setting.close();
    video.compact();
    video.close();
  }
}

class SettingBoxKey {
  /// 播放器
  static const String btmProgressBehavior = 'btmProgressBehavior',
      defaultVideoSpeed = 'defaultVideoSpeed',
      autoUpgradeEnable = 'autoUpgradeEnable',
      feedBackEnable = 'feedBackEnable',
      defaultVideoQa = 'defaultVideoQa',
      defaultAudioQa = 'defaultAudioQa',
      autoPlayEnable = 'autoPlayEnable',
      fullScreenMode = 'fullScreenMode',
      defaultDecode = 'defaultDecode',
      secondDecode = 'secondDecode',
      danmakuEnable = 'danmakuEnable',
      defaultToastOp = 'defaultToastOp',
      defaultPicQa = 'defaultPicQa',
      enableHA = 'enableHA',
      useOpenSLES = 'useOpenSLES',
      expandBuffer = 'expandBuffer',
      hardwareDecoding = 'hardwareDecoding',
      videoSync = 'videoSync',
      enableVerticalExpand = 'enableVerticalExpand',
      enableOnlineTotal = 'enableOnlineTotal',
      enableAutoBrightness = 'enableAutoBrightness',
      enableAutoEnter = 'enableAutoEnter',
      enableAutoExit = 'enableAutoExit',
      enableLongShowControl = 'enableLongShowControl',
      allowRotateScreen = 'allowRotateScreen',
      horizontalScreen = 'horizontalScreen',
      p1080 = 'p1080',
      // ignore: constant_identifier_names
      CDNService = 'CDNService',
      disableAudioCDN = 'disableAudioCDN',
      // enableCDN = 'enableCDN',
      autoPiP = 'autoPiP',
      pipNoDanmaku = 'pipNoDanmaku',
      enableAutoLongPressSpeed = 'enableAutoLongPressSpeed',
      subtitlePreference = 'subtitlePreference',

      // youtube 双击快进快退
      enableQuickDouble = 'enableQuickDouble',
      fullScreenGestureReverse = 'fullScreenGestureReverse',
      enableShowDanmaku = 'enableShowDanmaku',
      enableBackgroundPlay = 'enableBackgroundPlay',
      continuePlayInBackground = 'continuePlayInBackground',

      /// 隐私
      anonymity = 'anonymity',

      /// 推荐
      enableRcmdDynamic = 'enableRcmdDynamic',
      defaultRcmdType = 'defaultRcmdType',
      enableSaveLastData = 'enableSaveLastData',
      minDurationForRcmd = 'minDurationForRcmd',
      minLikeRatioForRecommend = 'minLikeRatioForRecommend',
      exemptFilterForFollowed = 'exemptFilterForFollowed',
      banWordForRecommend = 'banWordForRecommend',
      //filterUnfollowedRatio = 'filterUnfollowedRatio',
      applyFilterToRelatedVideos = 'applyFilterToRelatedVideos',

      /// 其他
      // autoUpdate = 'autoUpdate',
      autoClearCache = 'autoClearCache',
      defaultShowComment = 'defaultShowComment',
      replySortType = 'replySortType',
      defaultDynamicType = 'defaultDynamicType',
      enableHotKey = 'enableHotKey',
      enableQuickFav = 'enableQuickFav',
      enableWordRe = 'enableWordRe',
      enableSearchWord = 'enableSearchWord',
      enableSystemProxy = 'enableSystemProxy',
      enableAi = 'enableAi',
      disableLikeMsg = 'disableLikeMsg',
      defaultHomePage = 'defaultHomePage',
      previewQuality = 'previewQuality',
      checkDynamic = 'checkDynamic',
      dynamicPeriod = 'dynamicPeriod',
      schemeVariant = 'schemeVariant',
      grpcReply = 'grpcReply',
      showViewPoints = 'showViewPoints',
      showRelatedVideo = 'showRelatedVideo',
      showVideoReply = 'showVideoReply',
      showBangumiReply = 'showBangumiReply',
      alwaysExapndIntroPanel = 'alwaysExapndIntroPanel',
      exapndIntroPanelH = 'exapndIntroPanelH',

      // Sponsor Block
      enableSponsorBlock = 'enableSponsorBlock',
      blockSettings = 'blockSettings',
      blockLimit = 'blockLimit',
      blockColor = 'blockColor',
      blockUserID = 'blockUserID',
      blockToast = 'blockToast',
      blockServer = 'blockServer',
      blockTrack = 'blockTrack',

      // 弹幕相关设置 权重（云屏蔽） 屏蔽类型 显示区域 透明度 字体大小 弹幕时间 描边粗细 字体粗细
      danmakuWeight = 'danmakuWeight',
      danmakuBlockType = 'danmakuBlockType',
      danmakuShowArea = 'danmakuShowArea',
      danmakuOpacity = 'danmakuOpacity',
      danmakuFontScale = 'danmakuFontScale',
      danmakuFontScaleFS = 'danmakuFontScaleFS',
      danmakuDuration = 'danmakuDuration',
      danmakuMassiveMode = 'danmakuMassiveMode',
      strokeWidth = 'strokeWidth',
      fontWeight = 'fontWeight',
      memberTab = 'memberTab',
      subtitleFontScale = 'subtitleFontScale',
      subtitleFontScaleFS = 'subtitleFontScaleFS',
      dynamicDetailRatio = 'dynamicDetailRatio',

      // 代理host port
      systemProxyHost = 'systemProxyHost',
      systemProxyPort = 'systemProxyPort';

  /// 外观
  static const String themeMode = 'themeMode',
      defaultTextScale = 'textScale',
      dynamicColor = 'dynamicColor', // bool
      customColor = 'customColor', // 自定义主题色
      enableSingleRow = 'enableSingleRow', // 首页单列
      displayMode = 'displayMode',
      maxRowWidth = 'maxRowWidth', // 首页列最大宽度（dp）
      videoPlayerRemoveSafeArea = 'videoPlayerRemoveSafeArea', // 视频播放器移除安全边距
      // videoPlayerShowStatusBarBackgroundColor =
      //     'videoPlayerShowStatusBarBackgroundColor', // 播放页状态栏显示为背景色
      dynamicsWaterfallFlow = 'dynamicsWaterfallFlow', // 动态瀑布流
      upPanelPosition = 'upPanelPosition', // up主面板位置
      dynamicsShowAllFollowedUp = 'dynamicsShowAllFollowedUp', // 动态显示全部关注up
      useSideBar = 'useSideBar',
      enableMYBar = 'enableMYBar',
      hideSearchBar = 'hideSearchBar', // 收起顶栏
      hideTabBar = 'hideTabBar', // 收起底栏
      tabbarSort = 'tabbarSort', // 首页tabbar
      dynamicBadgeMode = 'dynamicBadgeMode',
      hiddenSettingUnlocked = 'hiddenSettingUnlocked',
      enableGradientBg = 'enableGradientBg',
      navBarSort = 'navBarSort';
}

class LocalCacheKey {
  // 历史记录暂停状态 默认false 记录
  static const String historyPause = 'historyPause',

      // 隐私设置-黑名单管理
      blackMidsList = 'blackMidsList',
      // 弹幕屏蔽规则
      danmakuFilterRule = 'danmakuFilterRule',
      // access_key
      accessKey = 'accessKey',

      //
      wbiKeys = 'wbiKeys',
      timeStamp = 'timeStamp';
}

class VideoBoxKey {
  // 视频比例
  static const String videoFit = 'videoFit',
      // 亮度
      videoBrightness = 'videoBrightness',
      // 倍速
      videoSpeed = 'videoSpeed',
      // 播放顺序
      playRepeat = 'playRepeat',
      // 默认倍速
      playSpeedDefault = 'playSpeedDefault',
      // 默认长按倍速
      longPressSpeedDefault = 'longPressSpeedDefault',
      // 倍速集合
      speedsList = 'speedsList',
      // 画面填充比例
      cacheVideoFit = 'cacheVideoFit';
}
