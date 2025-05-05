enum VideoQuality {
  speed240,
  fluent360,
  clear480,
  high720,
  high72060,
  high1080,
  high1080plus,
  high108060,
  super4K,
  hdr,
  dolbyVision,
  super8k
}

extension VideoQualityExt on VideoQuality {
  static const List<int> _codeList = [
    6,
    16,
    32,
    64,
    74,
    80,
    112,
    116,
    120,
    125,
    126,
    127,
  ];
  int get code => _codeList[index];

  static VideoQuality? fromCode(int code) {
    final index = _codeList.indexOf(code);
    if (index != -1) {
      return VideoQuality.values[index];
    }
    return null;
  }

  String get description => const [
        '240P 极速',
        '360P 流畅',
        '480P 清晰',
        '720P 高清',
        '720P60 高帧率',
        '1080P 高清',
        '1080P+ 高码率',
        '1080P60 高帧率',
        '4K 超清',
        'HDR 真彩色',
        '杜比视界',
        '8K 超高清'
      ][index];
}
