class CntInfo {
  int? collect;
  int? play;
  int? thumbUp;
  int? share;
  int? danmaku;

  CntInfo({
    this.collect,
    this.play,
    this.thumbUp,
    this.share,
    this.danmaku,
  });

  factory CntInfo.fromJson(Map<String, dynamic> json) => CntInfo(
        collect: json['collect'] as int?,
        play: json['play'] as int?,
        thumbUp: json['thumb_up'] as int?,
        share: json['share'] as int?,
        danmaku: json['danmaku'] as int?,
      );
}
