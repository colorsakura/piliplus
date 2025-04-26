class ContainerSize {
	double? height;
	double? width;

	ContainerSize({this.height, this.width});

	factory ContainerSize.fromJson(Map<String, dynamic> json) => ContainerSize(
				height: (json['height'] as num?)?.toDouble(),
				width: (json['width'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'height': height,
				'width': width,
			};
}
