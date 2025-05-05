class WatchedShow {
  bool? sw1tch;
  int? num;
  String? textSmall;
  String? textLarge;
  String? icon;
  int? iconLocation;
  String? iconWeb;

  WatchedShow({
    this.sw1tch,
    this.num,
    this.textSmall,
    this.textLarge,
    this.icon,
    this.iconLocation,
    this.iconWeb,
  });

  factory WatchedShow.fromJson(Map<String, dynamic> json) => WatchedShow(
        sw1tch: json['switch'] as bool?,
        num: json['num'] as int?,
        textSmall: json['text_small'] as String?,
        textLarge: json['text_large'] as String?,
        icon: json['icon'] as String?,
        iconLocation: json['icon_location'] as int?,
        iconWeb: json['icon_web'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'switch': sw1tch,
        'num': num,
        'text_small': textSmall,
        'text_large': textLarge,
        'icon': icon,
        'icon_location': iconLocation,
        'icon_web': iconWeb,
      };
}
