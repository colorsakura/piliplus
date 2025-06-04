class VideoRelation {
  bool? attention;
  bool? favorite;
  bool? seasonFav;
  bool? like;
  bool? dislike;
  int? coin;

  VideoRelation({
    this.attention,
    this.favorite,
    this.seasonFav,
    this.like,
    this.dislike,
    this.coin,
  });

  factory VideoRelation.fromJson(Map<String, dynamic> json) => VideoRelation(
        attention: json['attention'] as bool?,
        favorite: json['favorite'] as bool?,
        seasonFav: json['season_fav'] as bool?,
        like: json['like'] as bool?,
        dislike: json['dislike'] as bool?,
        coin: json['coin'] as int?,
      );
}
