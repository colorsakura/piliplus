import 'general_config.dart';

class GeneralCfg {
	int? configType;
	GeneralConfig? generalConfig;

	GeneralCfg({this.configType, this.generalConfig});

	factory GeneralCfg.fromJson(Map<String, dynamic> json) => GeneralCfg(
				configType: json['config_type'] as int?,
				generalConfig: json['general_config'] == null
						? null
						: GeneralConfig.fromJson(json['general_config'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'config_type': configType,
				'general_config': generalConfig?.toJson(),
			};
}
