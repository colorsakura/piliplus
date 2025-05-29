class Stat {
  int? coins;
  int? danmakus;
  int? favorite;
  int? favorites;
  String? followText;
  int? likes;
  int? reply;
  int? share;
  int? views;
  int? vt;

  Stat({
    this.coins,
    this.danmakus,
    this.favorite,
    this.favorites,
    this.followText,
    this.likes,
    this.reply,
    this.share,
    this.views,
    this.vt,
  });

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        coins: json["coins"],
        danmakus: json["danmakus"],
        favorite: json["favorite"],
        favorites: json["favorites"],
        followText: json["follow_text"],
        likes: json["likes"],
        reply: json["reply"],
        share: json["share"],
        views: json["views"],
        vt: json["vt"],
      );
}
