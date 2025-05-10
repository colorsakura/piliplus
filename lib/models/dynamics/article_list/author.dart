class Author {
  int? mid;
  String? name;
  String? face;

  Author({
    this.mid,
    this.name,
    this.face,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        mid: json['mid'] as int?,
        name: json['name'] as String?,
        face: json['face'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'mid': mid,
        'name': name,
        'face': face,
      };
}
