// ignore_for_file: constant_identifier_names

enum VideoDecodeFormatType {
  DVH1,
  AV1,
  HEVC,
  AVC,
}

extension VideoDecodeFormatTypeExt on VideoDecodeFormatType {
  String get description => const ['DVH1', 'AV1', 'HEVC', 'AVC'][index];

  static const List<String> _codeList = ['dvh1', 'av01', 'hev1', 'avc1'];
  String get code => _codeList[index];

  static VideoDecodeFormatType? fromCode(String code) {
    final index = _codeList.indexOf(code);
    if (index != -1) {
      return VideoDecodeFormatType.values[index];
    }
    return null;
  }

  static VideoDecodeFormatType? fromString(String val) {
    var result = VideoDecodeFormatType.values.first;
    for (var i in _codeList) {
      if (val.startsWith(i)) {
        result = VideoDecodeFormatType.values[_codeList.indexOf(i)];
        break;
      }
    }
    return result;
  }
}
