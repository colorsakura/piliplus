import 'share_info.dart';

class ModuleBottom {
	ShareInfo? shareInfo;

	ModuleBottom({this.shareInfo});

	factory ModuleBottom.fromJson(Map<String, dynamic> json) => ModuleBottom(
				shareInfo: json['share_info'] == null
						? null
						: ShareInfo.fromJson(json['share_info'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'share_info': shareInfo?.toJson(),
			};
}
