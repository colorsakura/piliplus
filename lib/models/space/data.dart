import 'package:PiliPlus/models/space_article/data.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space/archive.dart';
import 'package:PiliPlus/models/space/attention_tip.dart';
import 'package:PiliPlus/models/space/audios.dart';
import 'package:PiliPlus/models/space/card.dart';
import 'package:PiliPlus/models/space/coin_archive.dart';
import 'package:PiliPlus/models/space/favourite2.dart';
import 'package:PiliPlus/models/space/images.dart';
import 'package:PiliPlus/models/space/like_archive.dart';
import 'package:PiliPlus/models/space/season.dart';
import 'package:PiliPlus/models/space/series.dart';
import 'package:PiliPlus/models/space/setting.dart';
import 'package:PiliPlus/models/space/tab.dart';
import 'package:PiliPlus/models/space/tab2.dart';

part 'data.g.dart';

@JsonSerializable()
class SpaceData {
  int? relation;
  @JsonKey(name: 'rel_special')
  int? relSpecial;
  @JsonKey(name: 'guest_relation')
  int? guestRelation;
  @JsonKey(name: 'default_tab')
  String? defaultTab;
  @JsonKey(name: 'is_params')
  bool? isParams;
  Setting? setting;
  Tab? tab;
  SpaceCard? card;
  SpaceImages? images;
  Archive? archive;
  Series? series;
  SpaceArticleData? article;
  Season? season;
  @JsonKey(name: 'coin_archive')
  CoinArchive? coinArchive;
  @JsonKey(name: 'like_archive')
  LikeArchive? likeArchive;
  Audios? audios;
  Favourite2? favourite2;
  @JsonKey(name: 'attention_tip')
  AttentionTip? attentionTip;
  @JsonKey(name: 'fans_effect')
  // FansEffect? fansEffect;
  List<Tab2>? tab2;
  @JsonKey(name: 'nft_face_button')
  dynamic nftFaceButton;
  @JsonKey(name: 'digital_button')
  dynamic digitalButton;
  dynamic entry;
  dynamic live;
  UgcSeason? ugcSeason;

  SpaceData({
    this.relation,
    this.relSpecial,
    this.guestRelation,
    this.defaultTab,
    this.isParams,
    this.setting,
    this.tab,
    this.card,
    this.images,
    this.archive,
    this.series,
    this.article,
    this.season,
    this.coinArchive,
    this.likeArchive,
    this.audios,
    this.favourite2,
    this.attentionTip,
    // this.fansEffect,
    this.tab2,
    this.nftFaceButton,
    this.digitalButton,
    this.entry,
    this.live,
    this.ugcSeason,
  });

  factory SpaceData.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

class UgcSeason {
  int? count;

  UgcSeason({
    this.count,
  });

  UgcSeason.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }
}
