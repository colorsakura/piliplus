import 'package:PiliPlus/models/download/bili_download_entry_info.dart';
import 'package:PiliPlus/models/video/video_detail/data.dart';
import 'package:PiliPlus/models/video/video_detail/page.dart';
import 'package:PiliPlus/models/pgc/pgc_info_model/episode.dart' as pgc;
import 'package:PiliPlus/models/pgc/pgc_info_model/result.dart';
import 'package:PiliPlus/models/common/video/video_quality.dart';
import 'package:PiliPlus/services/interfaces/base_service_interface.dart';
import 'package:get/get.dart';

/// 下载服务接口
abstract class IDownloadService implements IBaseService {
  /// 等待下载队列
  RxList<BiliDownloadEntryInfo> get waitDownloadQueue;

  /// 已下载列表
  List<BiliDownloadEntryInfo> get downloadList;

  /// 当前下载项
  BiliDownloadEntryInfo? get curDownload;

  /// 下载状态通知器
  Set<void Function()> get flagNotifier;

  /// 初始化下载列表
  Future<void> initDownloadList();

  /// 下载视频
  void downloadVideo(
    Part page,
    VideoDetailData? videoDetail,
    dynamic videoArc,  // 可以是 ugc.EpisodeItem 或 pgc.EpisodeItem
    VideoQuality videoQuality,
  );

  /// 下载番剧
  void downloadBangumi(
    int index,
    PgcInfoModel pgcItem,
    pgc.EpisodeItem episode,
    VideoQuality quality,
  );

  /// 开始下载
  Future<void> startDownload(BiliDownloadEntryInfo entry);

  /// 下载弹幕
  Future<bool> downloadDanmaku({
    required BiliDownloadEntryInfo entry,
    bool isUpdate,
  });

  /// 删除下载
  Future<void> deleteDownload({
    required BiliDownloadEntryInfo entry,
    bool removeList,
    bool removeQueue,
    bool refresh,
    bool downloadNext,
  });

  /// 删除页面
  Future<void> deletePage({
    required String pageDirPath,
    bool refresh,
  });

  /// 取消下载
  Future<void> cancelDownload({
    required bool isDelete,
    bool downloadNext,
  });

  /// 下载下一个
  void nextDownload();
}