class Meta {
  int? size;

  Meta({this.size});

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        size: json['size'] as int?,
      );
}
