import 'package:PiliPlus/services/interfaces/account_service_interface.dart';
import 'package:PiliPlus/services/interfaces/download_service_interface.dart';
import 'package:PiliPlus/services/interfaces/audio_service_interface.dart';

/// 服务定位器接口
abstract class IServiceLocator {
  /// 获取账户服务
  IAccountService getAccountService();

  /// 获取下载服务
  IDownloadService getDownloadService();

  /// 获取音频服务
  IAudioService getAudioService();

  /// 注册服务
  void registerService<T>(T service);

  /// 解析服务
  T resolve<T>();

  /// 初始化所有服务
  Future<void> initializeServices();

  /// 销毁所有服务
  Future<void> disposeServices();
}