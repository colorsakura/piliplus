class Upper {
  int? mid;
  String? name;

  Upper({this.mid, this.name});

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        mid: json['mid'] as int?,
        name: json['name'] as String?,
      );
}
