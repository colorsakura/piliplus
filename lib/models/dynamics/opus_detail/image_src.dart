import 'remote.dart';

class ImageSrc {
	int? placeholder;
	Remote? remote;
	int? srcType;

	ImageSrc({this.placeholder, this.remote, this.srcType});

	factory ImageSrc.fromJson(Map<String, dynamic> json) => ImageSrc(
				placeholder: json['placeholder'] as int?,
				remote: json['remote'] == null
						? null
						: Remote.fromJson(json['remote'] as Map<String, dynamic>),
				srcType: json['src_type'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'placeholder': placeholder,
				'remote': remote?.toJson(),
				'src_type': srcType,
			};
}
