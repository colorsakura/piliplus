class Pic {
  List<PicItem>? pics;
  int? style;
  String? url;
  num? width;
  double? height;
  num? size;

  Pic({
    this.pics,
    this.style,
    this.url,
    this.height,
    this.width,
    this.size,
  });

  factory Pic.fromJson(Map<String, dynamic> json) => Pic(
        pics: (json['pics'] as List<dynamic>?)
            ?.map((e) => PicItem.fromJson(e as Map<String, dynamic>))
            .toList(),
        style: json['style'] as int?,
        url: json['url'],
        height: (json['height'] as num?)?.toDouble(),
        width: json['width'] as num?,
        size: json['size'] as num?,
      );

  Map<String, dynamic> toJson() => {
        'pics': pics?.map((e) => e.toJson()).toList(),
        'style': style,
        'height': height,
        'width': width,
        'size': size,
        'url': url,
      };
}

class PicItem {
  num? height;
  num? width;
  num? size;
  String? url;
  String? liveUrl;
  double? calHeight;

  void onCalHeight(maxWidth) {
    if (calHeight == null && height != null && width != null) {
      calHeight = maxWidth * height! / width!;
    }
  }

  PicItem({
    this.height,
    this.width,
    this.size,
    this.url,
    this.liveUrl,
  });

  factory PicItem.fromJson(Map<String, dynamic> json) => PicItem(
        height: json['height'] as num?,
        width: json['width'] as num?,
        size: json['size'] as num?,
        url: json['url'] as String?,
        liveUrl: json['live_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'width': width,
        'size': size,
        'url': url,
        'live_url': liveUrl,
      };
}
