// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralSpec _$GeneralSpecFromJson(Map<String, dynamic> json) => GeneralSpec(
      posSpec: json['pos_spec'] == null
          ? null
          : PosSpec.fromJson(json['pos_spec'] as Map<String, dynamic>),
      sizeSpec: json['size_spec'] == null
          ? null
          : SizeSpec.fromJson(json['size_spec'] as Map<String, dynamic>),
      renderSpec: json['render_spec'] == null
          ? null
          : RenderSpec.fromJson(json['render_spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeneralSpecToJson(GeneralSpec instance) =>
    <String, dynamic>{
      'pos_spec': instance.posSpec,
      'size_spec': instance.sizeSpec,
      'render_spec': instance.renderSpec,
    };
