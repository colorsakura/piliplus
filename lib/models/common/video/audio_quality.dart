// ignore_for_file: constant_identifier_names

enum AudioQuality { k64, k132, k192, dolby, hiRes }

extension AudioQualityExt on AudioQuality {
  static const List<int> _codeList = [
    30216,
    30232,
    30280,
    30250,
    30251,
  ];
  int get code => _codeList[index];

  static AudioQuality? fromCode(int code) {
    final index = _codeList.indexOf(code);
    if (index != -1) {
      return AudioQuality.values[index];
    }
    return null;
  }

  String get description => const [
        '64K',
        '132K',
        '192K',
        '杜比全景声',
        'Hi-Res无损',
      ][index];
}
