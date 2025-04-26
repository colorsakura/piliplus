import 'icon_resource.dart';

class AvatarIcon {
	IconResource? iconResource;

	AvatarIcon({this.iconResource});

	factory AvatarIcon.fromJson(Map<String, dynamic> json) => AvatarIcon(
				iconResource: json['icon_resource'] == null
						? null
						: IconResource.fromJson(json['icon_resource'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'icon_resource': iconResource?.toJson(),
			};
}
