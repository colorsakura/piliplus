class CntInfo {
  int? collect;
  int? play;
  int? danmaku;
  int? vt;

  CntInfo({this.collect, this.play, this.danmaku, this.vt});

  factory CntInfo.fromJson(Map<String, dynamic> json) => CntInfo(
        collect: json['collect'] as int?,
        play: json['play'] as int?,
        danmaku: json['danmaku'] as int?,
        vt: json['vt'] as int?,
      );
}
