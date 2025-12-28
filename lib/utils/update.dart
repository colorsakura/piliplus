import 'dart:io';

import 'package:PiliPlus/build_config.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/http/api.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/ua_type.dart';
import 'package:PiliPlus/utils/accounts/account.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

abstract final class Update {
  static const MethodChannel _channel = MethodChannel('PiliPlus');

  // 检查更新
  static Future<void> checkUpdate([bool isAuto = true]) async {
    if (kDebugMode) return;
    SmartDialog.dismiss();
    try {
      final res = await Request().get(
        Api.latestApp,
        options: Options(
          headers: {'user-agent': UaType.mob.ua},
          extra: {'account': const NoAccount()},
        ),
      );
      if (res.data is Map || res.data.isEmpty) {
        if (!isAuto) {
          SmartDialog.showToast('检查更新失败，GitHub接口未返回数据，请检查网络');
        }
        return;
      }
      final data = res.data[0];
      final int latest =
          DateTime.parse(data['created_at']).millisecondsSinceEpoch ~/ 1000;
      if (BuildConfig.buildTime >= latest) {
        if (!isAuto) {
          SmartDialog.showToast('已是最新版本');
        }
      } else {
        SmartDialog.show(
          animationType: SmartAnimationType.centerFade_otherSlide,
          builder: (context) {
            final ThemeData theme = Theme.of(context);
            Widget downloadBtn(String text, {String? ext}) => TextButton(
              onPressed: () => onDownload(data, ext: ext),
              child: Text(text),
            );
            return AlertDialog(
              title: const Text('🎉 发现新版本 '),
              content: SizedBox(
                height: 280,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data['tag_name']}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      Text('${data['body']}'),
                      TextButton(
                        onPressed: () => PageUtils.launchURL(
                          '${Constants.sourceCodeUrl}/commits/main',
                        ),
                        child: Text(
                          "点此查看完整更新(即commit)内容",
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                if (isAuto)
                  TextButton(
                    onPressed: () {
                      SmartDialog.dismiss();
                      GStorage.setting.put(SettingBoxKey.autoUpdate, false);
                    },
                    child: Text(
                      '不再提醒',
                      style: TextStyle(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ),
                TextButton(
                  onPressed: SmartDialog.dismiss,
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
                if (Platform.isWindows) ...[
                  downloadBtn('zip', ext: 'zip'),
                  downloadBtn('exe', ext: 'exe'),
                ] else if (Platform.isLinux) ...[
                  downloadBtn('rpm', ext: 'rpm'),
                  downloadBtn('deb', ext: 'deb'),
                  downloadBtn('targz', ext: 'tar.gz'),
                ] else if (Platform.isAndroid) ...[
                  downloadBtn('apk', ext: 'apk'),
                ] else
                  downloadBtn('Github'),
              ],
            );
          },
        );
      }
    } catch (e) {
      if (kDebugMode) debugPrint('failed to check update: $e');
    }
  }

  // 下载适用于当前系统的安装包
  static Future<void> onDownload(Map data, {String? ext}) async {
    SmartDialog.dismiss();
    try {
      String? downloadUrl;
      String? fileName;

      void findDownloadUrl(String plat) {
        if (data['assets'].isNotEmpty) {
          for (Map<String, dynamic> i in data['assets']) {
            final String name = i['name'];
            if (name.contains(plat) &&
                (ext == null || ext.isEmpty ? true : name.endsWith(ext))) {
              downloadUrl = i['browser_download_url'];
              fileName = name;
              return;
            }
          }
          throw UnsupportedError('platform not found: $plat');
        }
      }

      if (Platform.isAndroid) {
        // 获取设备信息
        AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
        // [arm64-v8a]
        findDownloadUrl(androidInfo.supportedAbis.first);
      } else {
        findDownloadUrl(Platform.operatingSystem);
      }

      if (downloadUrl == null || fileName == null) {
        throw UnsupportedError('download URL not found');
      }

      // Android 平台下载并安装
      if (Platform.isAndroid) {
        await _downloadAndInstallApk(downloadUrl!, fileName!);
      } else {
        // 其他平台使用浏览器下载
        PageUtils.launchURL(downloadUrl!);
      }
    } catch (e) {
      if (kDebugMode) debugPrint('download error: $e');
      SmartDialog.showToast('下载失败: $e');
      PageUtils.launchURL('${Constants.sourceCodeUrl}/releases/latest');
    }
  }

  // 下载并安装 APK（仅 Android）
  static Future<void> _downloadAndInstallApk(
    String downloadUrl,
    String fileName,
  ) async {
    try {
      // 获取下载目录
      final Directory? externalDir = await getExternalStorageDirectory();
      if (externalDir == null) {
        throw Exception('无法获取外部存储目录');
      }

      // 创建下载目录
      final Directory downloadDir = Directory(
        path.join(externalDir.path, 'Download', 'PiliPlus'),
      );
      if (!downloadDir.existsSync()) {
        await downloadDir.create(recursive: true);
      }

      // APK 文件路径
      final String apkPath = path.join(downloadDir.path, fileName);
      final File apkFile = File(apkPath);

      // 如果文件已存在，询问是否覆盖
      if (apkFile.existsSync()) {
        final bool? shouldOverwrite = await SmartDialog.show<bool>(
          animationType: SmartAnimationType.centerFade_otherSlide,
          builder: (context) {
            final ThemeData theme = Theme.of(context);
            return AlertDialog(
              title: const Text('文件已存在'),
              content: const Text('APK 文件已存在，是否覆盖？'),
              actions: [
                TextButton(
                  onPressed: () => SmartDialog.dismiss(result: false),
                  child: Text(
                    '取消',
                    style: TextStyle(color: theme.colorScheme.outline),
                  ),
                ),
                TextButton(
                  onPressed: () => SmartDialog.dismiss(result: true),
                  child: Text(
                    '覆盖',
                    style: TextStyle(color: theme.colorScheme.primary),
                  ),
                ),
              ],
            );
          },
        );

        if (shouldOverwrite != true) {
          return;
        }
      }

      // 显示下载进度对话框
      CancelToken? cancelToken;
      bool isDownloading = true;

      SmartDialog.show(
        animationType: SmartAnimationType.centerFade_otherSlide,
        builder: (context) {
          final ThemeData theme = Theme.of(context);
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: const Text('正在下载更新包'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: 16),
                    Text(
                      fileName,
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      cancelToken?.cancel();
                      isDownloading = false;
                      SmartDialog.dismiss();
                    },
                    child: Text(
                      '取消',
                      style: TextStyle(color: theme.colorScheme.outline),
                    ),
                  ),
                ],
              );
            },
          );
        },
      );

      // 下载文件
      cancelToken = CancelToken();
      try {
        await Request().downloadFile(
          downloadUrl,
          apkPath,
          cancelToken: cancelToken,
        );

        if (!isDownloading) {
          return;
        }

        SmartDialog.dismiss();

        // 检查文件是否存在
        if (!apkFile.existsSync()) {
          throw Exception('下载的文件不存在');
        }

        // 安装 APK
        await _installApk(apkPath);
      } on DioException catch (e) {
        if (e.type == DioExceptionType.cancel) {
          SmartDialog.dismiss();
          SmartDialog.showToast('下载已取消');
        } else {
          SmartDialog.dismiss();
          throw Exception('下载失败: ${e.message}');
        }
      } catch (e) {
        SmartDialog.dismiss();
        rethrow;
      }
    } catch (e) {
      if (kDebugMode) debugPrint('download and install error: $e');
      SmartDialog.showToast('下载或安装失败: $e');
    }
  }

  // 安装 APK（仅 Android）
  static Future<void> _installApk(String apkPath) async {
    try {
      final bool result =
          await _channel.invokeMethod<bool>(
            'installApk',
            {'apkPath': apkPath},
          ) ??
          false;

      if (!result) {
        throw Exception('安装失败');
      }
    } on PlatformException catch (e) {
      if (kDebugMode) debugPrint('install APK error: $e');
      throw Exception('安装失败: ${e.message}');
    }
  }
}
