class Comic {
  int? count;
  List<dynamic>? item;

  Comic({this.count, this.item});

  factory Comic.fromJson(Map<String, dynamic> json) => Comic(
        count: json['count'] as int?,
        item: json['item'] as List<dynamic>?,
      );
}
