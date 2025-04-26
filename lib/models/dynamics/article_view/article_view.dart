import 'data.dart';

class ArticleView {
  int? code;
  String? message;
  int? ttl;
  ArticleData? data;

  ArticleView({this.code, this.message, this.ttl, this.data});

  factory ArticleView.fromJson(Map<String, dynamic> json) => ArticleView(
        code: json['code'] as int?,
        message: json['message'] as String?,
        ttl: json['ttl'] as int?,
        data: json['data'] == null
            ? null
            : ArticleData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'ttl': ttl,
        'data': data?.toJson(),
      };
}
