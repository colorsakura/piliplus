import 'package:PiliPlus/http/api.dart';

enum PgcReviewType {
  long(label: '长评', api: Api.pgcReviewL),
  short(label: '短评', api: Api.pgcReviewS);

  final String label;
  final String api;
  const PgcReviewType({
    required this.label,
    required this.api,
  });
}
