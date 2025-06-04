class Upper {
  int? mid;
  String? name;
  String? face;
  int? followed;
  int? fans;
  int? vipType;
  int? vipStatue;
  int? vipDueDate;
  int? vipPayType;
  int? officialRole;
  String? officialTitle;
  String? officialDesc;
  String? displayName;

  Upper({
    this.mid,
    this.name,
    this.face,
    this.followed,
    this.fans,
    this.vipType,
    this.vipStatue,
    this.vipDueDate,
    this.vipPayType,
    this.officialRole,
    this.officialTitle,
    this.officialDesc,
    this.displayName,
  });

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        mid: json['mid'] as int?,
        name: json['name'] as String?,
        face: json['face'] as String?,
        followed: json['followed'] as int?,
        fans: json['fans'] as int?,
        vipType: json['vip_type'] as int?,
        vipStatue: json['vip_statue'] as int?,
        vipDueDate: json['vip_due_date'] as int?,
        vipPayType: json['vip_pay_type'] as int?,
        officialRole: json['official_role'] as int?,
        officialTitle: json['official_title'] as String?,
        officialDesc: json['official_desc'] as String?,
        displayName: json['display_name'] as String?,
      );
}
