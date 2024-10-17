// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) => Setting(
      channel: (json['channel'] as num?)?.toInt(),
      favVideo: (json['fav_video'] as num?)?.toInt(),
      coinsVideo: (json['coins_video'] as num?)?.toInt(),
      likesVideo: (json['likes_video'] as num?)?.toInt(),
      bangumi: (json['bangumi'] as num?)?.toInt(),
      playedGame: (json['played_game'] as num?)?.toInt(),
      groups: (json['groups'] as num?)?.toInt(),
      comic: (json['comic'] as num?)?.toInt(),
      bbq: (json['bbq'] as num?)?.toInt(),
      dressUp: (json['dress_up'] as num?)?.toInt(),
      disableFollowing: (json['disable_following'] as num?)?.toInt(),
      livePlayback: (json['live_playback'] as num?)?.toInt(),
      closeSpaceMedal: (json['close_space_medal'] as num?)?.toInt(),
      onlyShowWearing: (json['only_show_wearing'] as num?)?.toInt(),
      disableShowSchool: (json['disable_show_school'] as num?)?.toInt(),
      disableShowNft: (json['disable_show_nft'] as num?)?.toInt(),
      disableShowFans: (json['disable_show_fans'] as num?)?.toInt(),
      chargeVideo: (json['charge_video'] as num?)?.toInt(),
      lessonVideo: (json['lesson_video'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      'channel': instance.channel,
      'fav_video': instance.favVideo,
      'coins_video': instance.coinsVideo,
      'likes_video': instance.likesVideo,
      'bangumi': instance.bangumi,
      'played_game': instance.playedGame,
      'groups': instance.groups,
      'comic': instance.comic,
      'bbq': instance.bbq,
      'dress_up': instance.dressUp,
      'disable_following': instance.disableFollowing,
      'live_playback': instance.livePlayback,
      'close_space_medal': instance.closeSpaceMedal,
      'only_show_wearing': instance.onlyShowWearing,
      'disable_show_school': instance.disableShowSchool,
      'disable_show_nft': instance.disableShowNft,
      'disable_show_fans': instance.disableShowFans,
      'charge_video': instance.chargeVideo,
      'lesson_video': instance.lessonVideo,
    };
