class UidSetting {
  int? id;
  int? setting;

  UidSetting({this.id, this.setting});

  factory UidSetting.fromJson(Map<String, dynamic> json) => UidSetting(
        id: json['id'] as int?,
        setting: json['setting'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'setting': setting,
      };
}
