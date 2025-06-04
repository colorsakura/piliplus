class PgcConditionOrder {
  String? field;
  String? name;
  String? sort;

  PgcConditionOrder({this.field, this.name, this.sort});

  factory PgcConditionOrder.fromJson(Map<String, dynamic> json) =>
      PgcConditionOrder(
        field: json['field'] as String?,
        name: json['name'] as String?,
        sort: json['sort'] as String?,
      );
}
