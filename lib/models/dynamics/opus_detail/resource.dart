import 'res_image.dart';

class Resource {
	ResImage? resImage;
	int? resType;

	Resource({this.resImage, this.resType});

	factory Resource.fromJson(Map<String, dynamic> json) => Resource(
				resImage: json['res_image'] == null
						? null
						: ResImage.fromJson(json['res_image'] as Map<String, dynamic>),
				resType: json['res_type'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'res_image': resImage?.toJson(),
				'res_type': resType,
			};
}
