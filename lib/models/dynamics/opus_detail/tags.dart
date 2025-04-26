import 'general_cfg.dart';

class Tags {
  // AvatarLayer? avatarLayer;
  GeneralCfg? generalCfg;

  Tags({
    // this.avatarLayer,
    this.generalCfg,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        // avatarLayer: json['AVATAR_LAYER'] == null
        //     ? null
        //     : AvatarLayer.fromJson(
        //         json['AVATAR_LAYER'] as Map<String, dynamic>),
        generalCfg: json['GENERAL_CFG'] == null
            ? null
            : GeneralCfg.fromJson(json['GENERAL_CFG'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        // 'AVATAR_LAYER': avatarLayer?.toJson(),
        'GENERAL_CFG': generalCfg?.toJson(),
      };
}
