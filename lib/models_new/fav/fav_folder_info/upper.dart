class Upper {
  int? mid;
  String? name;
  String? face;
  bool? followed;
  int? vipType;
  int? vipStatue;

  Upper({
    this.mid,
    this.name,
    this.face,
    this.followed,
    this.vipType,
    this.vipStatue,
  });

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        mid: json['mid'] as int?,
        name: json['name'] as String?,
        face: json['face'] as String?,
        followed: json['followed'] as bool?,
        vipType: json['vip_type'] as int?,
        vipStatue: json['vip_statue'] as int?,
      );
}
