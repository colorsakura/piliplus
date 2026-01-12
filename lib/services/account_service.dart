import 'dart:async';

import 'package:PiliPlus/models/user/info.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/services/interfaces/account_service_interface.dart';

class AccountService extends GetxService implements IAccountService {
  final RxString _face = ''.obs;
  final RxBool _isLogin = false.obs;
  late final StreamController<bool> _loginStatusController;

  @override
  RxString get face => _face;

  @override
  RxBool get isLogin => _isLogin;

  @override
  Stream<bool> get loginStatusStream => _loginStatusController.stream;

  @override
  Future<void> initialize() async {
    UserInfoData? userInfo = Pref.userInfoCache;
    if (userInfo != null) {
      _face.value = userInfo.face ?? '';
      _isLogin.value = true;
    } else {
      _face.value = '';
      _isLogin.value = false;
    }
  }

  @override
  Future<void> dispose() async {
    await _loginStatusController.close();
  }

  @override
  Future<void> updateUserInfo() async {
    UserInfoData? userInfo = Pref.userInfoCache;
    if (userInfo != null) {
      _face.value = userInfo.face ?? '';
      _isLogin.value = true;
    } else {
      _face.value = '';
      _isLogin.value = false;
    }
  }

  @override
  Future<void> logout() async {
    await GStorage.userInfo.delete('userInfoCache');
    _face.value = '';
    _isLogin.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    _loginStatusController = StreamController<bool>.broadcast();
    _isLogin.listen((value) {
      _loginStatusController.add(value);
    });
    initialize();
  }
}

mixin AccountMixin on GetLifeCycleBase {
  StreamSubscription<bool>? _listener;

  AccountService get accountService => Get.find<AccountService>();

  void onChangeAccount(bool isLogin);

  @override
  void onInit() {
    super.onInit();
    _listener = accountService.isLogin.listen(onChangeAccount);
  }

  @override
  void onClose() {
    _listener?.cancel();
    _listener = null;
    super.onClose();
  }
}
