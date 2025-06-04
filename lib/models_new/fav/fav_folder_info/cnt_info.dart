class CntInfo {
  int? collect;
  int? play;
  int? thumbUp;
  int? share;

  CntInfo({this.collect, this.play, this.thumbUp, this.share});

  factory CntInfo.fromJson(Map<String, dynamic> json) => CntInfo(
        collect: json['collect'] as int?,
        play: json['play'] as int?,
        thumbUp: json['thumb_up'] as int?,
        share: json['share'] as int?,
      );
}
