import 'package:PiliPlus/services/audio_handler.dart';
import 'package:PiliPlus/services/audio_session.dart';
import 'package:PiliPlus/services/service_locator_impl.dart';
import 'package:PiliPlus/services/account_service.dart';
import 'package:PiliPlus/services/download/download_service.dart';
import 'package:PiliPlus/services/interfaces/account_service_interface.dart';
import 'package:PiliPlus/services/interfaces/download_service_interface.dart';
import 'package:PiliPlus/services/interfaces/audio_service_interface.dart';
import 'package:get/get.dart';

VideoPlayerServiceHandler? videoPlayerServiceHandler;
AudioSessionHandler? audioSessionHandler;

Future<void> setupServiceLocator() async {
  final audio = await initAudioService();
  videoPlayerServiceHandler = audio;
  audioSessionHandler = AudioSessionHandler();

  // 注册服务到服务定位器
  serviceLocator.registerService<IAccountService>(Get.find<AccountService>());
  serviceLocator.registerService<IDownloadService>(Get.find<DownloadService>());
  serviceLocator.registerService<IAudioService>(audio);
}
