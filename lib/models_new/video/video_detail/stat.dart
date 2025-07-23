class Stat {
  int? aid;
  int? view;
  int? danmaku;
  int? reply;
  int? favorite;
  num? coin;
  int? share;
  int? nowRank;
  int? hisRank;
  int? like;
  int? dislike;
  String? evaluation;
  int? vt;

  Stat({
    this.aid,
    this.view,
    this.danmaku,
    this.reply,
    this.favorite,
    this.coin,
    this.share,
    this.nowRank,
    this.hisRank,
    this.like,
    this.dislike,
    this.evaluation,
    this.vt,
  });

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
    aid: json['aid'] as int?,
    view: json['view'] as int?,
    danmaku: json['danmaku'] as int?,
    reply: json['reply'] as int?,
    favorite: json['favorite'] as int?,
    coin: json['coin'] as num?,
    share: json['share'] as int?,
    nowRank: json['now_rank'] as int?,
    hisRank: json['his_rank'] as int?,
    like: json['like'] as int?,
    dislike: json['dislike'] as int?,
    evaluation: json['evaluation'] as String?,
    vt: json['vt'] as int?,
  );
}
