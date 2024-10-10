//
//  Generated code. Do not modify.
//  source: locale.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 区域标识
/// gRPC头部:x-bili-locale-bin
class Locale extends $pb.GeneratedMessage {
  factory Locale({
    LocaleIds? cLocale,
    LocaleIds? sLocale,
    $core.String? simCode,
    $core.String? timezone,
  }) {
    final $result = create();
    if (cLocale != null) {
      $result.cLocale = cLocale;
    }
    if (sLocale != null) {
      $result.sLocale = sLocale;
    }
    if (simCode != null) {
      $result.simCode = simCode;
    }
    if (timezone != null) {
      $result.timezone = timezone;
    }
    return $result;
  }
  Locale._() : super();
  factory Locale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Locale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Locale', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.locale'), createEmptyInstance: create)
    ..aOM<LocaleIds>(1, _omitFieldNames ? '' : 'cLocale', subBuilder: LocaleIds.create)
    ..aOM<LocaleIds>(2, _omitFieldNames ? '' : 'sLocale', subBuilder: LocaleIds.create)
    ..aOS(3, _omitFieldNames ? '' : 'simCode')
    ..aOS(4, _omitFieldNames ? '' : 'timezone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Locale clone() => Locale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Locale copyWith(void Function(Locale) updates) => super.copyWith((message) => updates(message as Locale)) as Locale;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Locale create() => Locale._();
  Locale createEmptyInstance() => create();
  static $pb.PbList<Locale> createRepeated() => $pb.PbList<Locale>();
  @$core.pragma('dart2js:noInline')
  static Locale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Locale>(create);
  static Locale? _defaultInstance;

  /// App设置的locale
  @$pb.TagNumber(1)
  LocaleIds get cLocale => $_getN(0);
  @$pb.TagNumber(1)
  set cLocale(LocaleIds v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearCLocale() => clearField(1);
  @$pb.TagNumber(1)
  LocaleIds ensureCLocale() => $_ensure(0);

  /// 系统默认的locale
  @$pb.TagNumber(2)
  LocaleIds get sLocale => $_getN(1);
  @$pb.TagNumber(2)
  set sLocale(LocaleIds v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSLocale() => $_has(1);
  @$pb.TagNumber(2)
  void clearSLocale() => clearField(2);
  @$pb.TagNumber(2)
  LocaleIds ensureSLocale() => $_ensure(1);

  /// sim卡的国家码+运营商码
  @$pb.TagNumber(3)
  $core.String get simCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set simCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSimCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearSimCode() => clearField(3);

  /// 时区
  @$pb.TagNumber(4)
  $core.String get timezone => $_getSZ(3);
  @$pb.TagNumber(4)
  set timezone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimezone() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimezone() => clearField(4);
}

/// Defined by https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/LanguageandLocaleIDs/LanguageandLocaleIDs.html
class LocaleIds extends $pb.GeneratedMessage {
  factory LocaleIds({
    $core.String? language,
    $core.String? script,
    $core.String? region,
  }) {
    final $result = create();
    if (language != null) {
      $result.language = language;
    }
    if (script != null) {
      $result.script = script;
    }
    if (region != null) {
      $result.region = region;
    }
    return $result;
  }
  LocaleIds._() : super();
  factory LocaleIds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocaleIds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocaleIds', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.locale'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'language')
    ..aOS(2, _omitFieldNames ? '' : 'script')
    ..aOS(3, _omitFieldNames ? '' : 'region')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocaleIds clone() => LocaleIds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocaleIds copyWith(void Function(LocaleIds) updates) => super.copyWith((message) => updates(message as LocaleIds)) as LocaleIds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocaleIds create() => LocaleIds._();
  LocaleIds createEmptyInstance() => create();
  static $pb.PbList<LocaleIds> createRepeated() => $pb.PbList<LocaleIds>();
  @$core.pragma('dart2js:noInline')
  static LocaleIds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocaleIds>(create);
  static LocaleIds? _defaultInstance;

  /// A language designator is a code that represents a language.
  @$pb.TagNumber(1)
  $core.String get language => $_getSZ(0);
  @$pb.TagNumber(1)
  set language($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLanguage() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguage() => clearField(1);

  /// Writing systems.
  @$pb.TagNumber(2)
  $core.String get script => $_getSZ(1);
  @$pb.TagNumber(2)
  set script($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearScript() => clearField(2);

  /// A region designator is a code that represents a country or an area.
  @$pb.TagNumber(3)
  $core.String get region => $_getSZ(2);
  @$pb.TagNumber(3)
  set region($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegion() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegion() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
