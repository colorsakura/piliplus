import 'dart:convert';
import 'dart:io';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:webdav_client/webdav_client.dart' as webdav;

class WebDav {
  late String _webDavUri;
  late String _webDavUsername;
  late String _webDavPassword;
  late String _webdavDirectory;

  webdav.Client? _client;

  WebDav._internal();
  static final WebDav _instance = WebDav._internal();
  factory WebDav() => _instance;

  Future<bool> init() async {
    _webDavUri = GStorage.webdavUri;
    _webDavUsername = GStorage.webdavUsername;
    _webDavPassword = GStorage.webdavPassword;
    _webdavDirectory = GStorage.webdavDirectory;
    if (_webdavDirectory.endsWith('/').not) {
      _webdavDirectory += '/';
    }
    _webdavDirectory += 'PiliPlus';

    try {
      _client = null;
      final client = webdav.newClient(
        _webDavUri,
        user: _webDavUsername,
        password: _webDavPassword,
      )
        ..setHeaders({'accept-charset': 'utf-8'})
        ..setConnectTimeout(4000)
        ..setReceiveTimeout(4000)
        ..setSendTimeout(4000);

      await client.mkdirAll(_webdavDirectory);

      _client = client;
      return true;
    } catch (_) {
      return false;
    }
  }

  Future backup() async {
    if (_client == null) {
      if (await init() == false) {
        SmartDialog.showToast('备份失败，请检查配置');
        return;
      }
    }
    try {
      final path = '$_webdavDirectory/piliplus_settings.json';
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
      }
      String data = await GStorage.exportAllSettings();
      await _client!.write(path, utf8.encode(data));
      SmartDialog.showToast('备份成功');
    } catch (e) {
      SmartDialog.showToast('备份失败: $e');
    }
  }

  Future restore() async {
    if (_client == null) {
      if (await init() == false) {
        SmartDialog.showToast('恢复失败，请检查配置');
        return;
      }
    }
    try {
      final path = '$_webdavDirectory/piliplus_settings.json';
      final data = await _client!.read(path);
      await GStorage.importAllSettings(utf8.decode(data));
      SmartDialog.showToast('恢复成功');
    } catch (e) {
      SmartDialog.showToast('恢复失败: $e');
    }
  }
}
