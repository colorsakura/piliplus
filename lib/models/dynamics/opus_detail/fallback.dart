class Fallback {
  String? id;
  int? type;

  Fallback({
    this.id,
    this.type,
  });

  factory Fallback.fromJson(Map<String, dynamic> json) => Fallback(
        id: json['id'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
      };
}
