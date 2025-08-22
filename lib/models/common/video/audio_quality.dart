enum AudioQuality {
  hiRes(30251, 'Hi-Res无损'),
  dolby(30250, '杜比全景声'),
  k192(30280, '192K'),
  k132(30232, '132K'),
  k64(30216, '64K');

  final int code;
  final String desc;

  const AudioQuality(this.code, this.desc);

  static final _codeMap = {for (var i in values) i.code: i};

  static AudioQuality fromCode(int code) => _codeMap[code]!;
}
