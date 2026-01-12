import 'package:get/get.dart';
import 'package:PiliPlus/services/interfaces/base_service_interface.dart';

/// 账户服务接口
abstract class IAccountService implements IBaseService {
  /// 用户头像
  RxString get face;

  /// 是否登录
  RxBool get isLogin;

  /// 登录状态变更监听
  Stream<bool> get loginStatusStream;

  /// 更新用户信息
  Future<void> updateUserInfo();

  /// 登出
  Future<void> logout();
}