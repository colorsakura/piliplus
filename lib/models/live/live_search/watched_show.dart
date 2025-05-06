class WatchedShow {
  int? num;
  String? textSmall;
  String? textLarge;
  String? icon;
  int? iconLocation;
  String? iconWeb;

  WatchedShow({
    this.num,
    this.textSmall,
    this.textLarge,
    this.icon,
    this.iconLocation,
    this.iconWeb,
  });

  factory WatchedShow.fromJson(Map<String, dynamic> json) => WatchedShow(
        num: json['num'] as int?,
        textSmall: json['text_small'] as String?,
        textLarge: json['text_large'] as String?,
        icon: json['icon'] as String?,
        iconLocation: json['icon_location'] as int?,
        iconWeb: json['icon_web'] as String?,
      );
}
