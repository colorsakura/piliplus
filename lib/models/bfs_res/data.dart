class BfsResData {
  String? imageUrl;
  int? imageWidth;
  int? imageHeight;
  double? imgSize;

  BfsResData({this.imageUrl, this.imageWidth, this.imageHeight, this.imgSize});

  factory BfsResData.fromJson(Map<String, dynamic> json) => BfsResData(
        imageUrl: json['image_url'] as String?,
        imageWidth: json['image_width'] as int?,
        imageHeight: json['image_height'] as int?,
        imgSize: (json['img_size'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'image_url': imageUrl,
        'image_width': imageWidth,
        'image_height': imageHeight,
        'img_size': imgSize,
      };
}
