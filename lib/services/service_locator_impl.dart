import 'dart:async';

import 'package:PiliPlus/services/interfaces/account_service_interface.dart';
import 'package:PiliPlus/services/interfaces/download_service_interface.dart';
import 'package:PiliPlus/services/interfaces/audio_service_interface.dart';
import 'package:PiliPlus/services/interfaces/service_locator_interface.dart';

/// 服务定位器实现
class ServiceLocator implements IServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();
  factory ServiceLocator() => _instance;
  ServiceLocator._internal();

  final Map<Type, dynamic> _services = {};

  @override
  IAccountService getAccountService() {
    return _getServiceOrThrow<IAccountService>();
  }

  @override
  IDownloadService getDownloadService() {
    return _getServiceOrThrow<IDownloadService>();
  }

  @override
  IAudioService getAudioService() {
    return _getServiceOrThrow<IAudioService>();
  }

  @override
  void registerService<T>(T service) {
    _services[T] = service;
  }

  @override
  T resolve<T>() {
    return _getServiceOrThrow<T>();
  }

  T _getServiceOrThrow<T>() {
    final service = _services[T];
    if (service == null) {
      throw Exception('Service of type $T is not registered');
    }
    return service;
  }

  @override
  Future<void> initializeServices() async {
    final futures = <Future<void>>[];
    
    for (final service in _services.values) {
      if (service is IAccountService) {
        futures.add(service.initialize());
      } else if (service is IDownloadService) {
        futures.add(service.initialize());
      } else if (service is IAudioService) {
        futures.add(service.initialize());
      }
    }
    
    await Future.wait(futures);
  }

  @override
  Future<void> disposeServices() async {
    final futures = <Future<void>>[];
    
    for (final service in _services.values) {
      if (service is IAccountService) {
        futures.add(service.dispose());
      } else if (service is IDownloadService) {
        futures.add(service.dispose());
      } else if (service is IAudioService) {
        futures.add(service.dispose());
      }
    }
    
    await Future.wait(futures);
  }
}

/// 全局服务定位器实例
final serviceLocator = ServiceLocator();