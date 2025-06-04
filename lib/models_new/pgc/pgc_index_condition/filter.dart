import 'package:PiliPlus/models_new/pgc/pgc_index_condition/value.dart';

class PgcConditionFilter {
  String? field;
  String? name;
  List<PgcConditionValue>? values;

  PgcConditionFilter({this.field, this.name, this.values});

  factory PgcConditionFilter.fromJson(Map<String, dynamic> json) =>
      PgcConditionFilter(
        field: json['field'] as String?,
        name: json['name'] as String?,
        values: (json['values'] as List<dynamic>?)
            ?.map((e) => PgcConditionValue.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
