import 'package:PiliPlus/plugin/pl_player/pl_player_controller.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:audio_session/audio_session.dart';

class AudioSessionHandler {
  late AudioSession session;
  bool _playInterrupted = false;

  Future<bool> setActive(bool active) {
    return session.setActive(active);
  }

  AudioSessionHandler() {
    initSession();
  }

  Future<void> initSession() async {
    session = await AudioSession.instance;
    session.configure(const AudioSessionConfiguration.music());

    session.interruptionEventStream.listen((event) {
      final playerStatus = PlPlayerControllerV2.getPlayerStatusIfExists();
      // final player = PlPlayerControllerV2.getInstance();
      if (event.begin) {
        if (playerStatus != PlayerStatus.playing) return;
        // if (!player.playerStatus.playing) return;
        switch (event.type) {
          case AudioInterruptionType.duck:
            PlPlayerControllerV2.setVolumeIfExists(
              (PlPlayerControllerV2.getVolumeIfExists() ?? 0) * 0.5,
            );
            // player.setVolume(player.volume.value * 0.5);
            break;
          case AudioInterruptionType.pause:
            PlPlayerControllerV2.pauseIfExists(isInterrupt: true);
            // player.pause(isInterrupt: true);
            _playInterrupted = true;
            break;
          case AudioInterruptionType.unknown:
            PlPlayerControllerV2.pauseIfExists(isInterrupt: true);
            // player.pause(isInterrupt: true);
            _playInterrupted = true;
            break;
        }
      } else {
        switch (event.type) {
          case AudioInterruptionType.duck:
            PlPlayerControllerV2.setVolumeIfExists(
              (PlPlayerControllerV2.getVolumeIfExists() ?? 0) * 2,
            );
            // player.setVolume(player.volume.value * 2);
            break;
          case AudioInterruptionType.pause:
            if (_playInterrupted) PlPlayerControllerV2.playIfExists();
            //player.play();
            break;
          case AudioInterruptionType.unknown:
            break;
        }
        _playInterrupted = false;
      }
    });

    // 耳机拔出暂停
    session.becomingNoisyEventStream.listen((_) {
      PlPlayerControllerV2.pauseIfExists();
      // final player = PlPlayerControllerV2.getInstance();
      // if (player.playerStatus.playing) {
      //   player.pause();
      // }
    });
  }
}
