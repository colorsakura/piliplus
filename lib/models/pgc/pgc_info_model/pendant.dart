class Pendant {
  String? image;
  String? name;
  int? pid;

  Pendant({this.image, this.name, this.pid});

  factory Pendant.fromJson(Map<String, dynamic> json) => Pendant(
        image: json['image'] as String?,
        name: json['name'] as String?,
        pid: json['pid'] as int?,
      );
}
