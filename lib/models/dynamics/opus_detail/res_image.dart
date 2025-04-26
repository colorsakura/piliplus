import 'image_src.dart';

class ResImage {
	ImageSrc? imageSrc;

	ResImage({this.imageSrc});

	factory ResImage.fromJson(Map<String, dynamic> json) => ResImage(
				imageSrc: json['image_src'] == null
						? null
						: ImageSrc.fromJson(json['image_src'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'image_src': imageSrc?.toJson(),
			};
}
