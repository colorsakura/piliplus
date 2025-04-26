class SizeSpec {
  num? height;
  num? width;

  SizeSpec({this.height, this.width});

  factory SizeSpec.fromJson(Map<String, dynamic> json) => SizeSpec(
        height: json['height'],
        width: json['width'],
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'width': width,
      };
}
