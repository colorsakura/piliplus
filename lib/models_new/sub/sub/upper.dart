class Upper {
  int? mid;
  String? name;
  String? face;
  String? jumpLink;

  Upper({this.mid, this.name, this.face, this.jumpLink});

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        mid: json['mid'] as int?,
        name: json['name'] as String?,
        face: json['face'] as String?,
        jumpLink: json['jump_link'] as String?,
      );
}
