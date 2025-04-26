import 'data.dart';

class OpusDetail {
  int? code;
  String? message;
  int? ttl;
  OpusData? data;

  OpusDetail({this.code, this.message, this.ttl, this.data});

  factory OpusDetail.fromJson(Map<String, dynamic> json) => OpusDetail(
        code: json['code'] as int?,
        message: json['message'] as String?,
        ttl: json['ttl'] as int?,
        data: json['data'] == null
            ? null
            : OpusData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'ttl': ttl,
        'data': data?.toJson(),
      };
}
