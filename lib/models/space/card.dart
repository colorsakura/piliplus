import 'package:PiliPalaX/models/space/space_tag_bottom.dart';
import 'package:json_annotation/json_annotation.dart';

import 'achieve.dart';
import 'avatar.dart';
import 'entrance.dart';
import 'honours.dart';
import 'level_info.dart';
import 'likes.dart';
import 'nameplate.dart';
import 'nft_certificate.dart';
import 'official_verify.dart';
import 'pendant.dart';
import 'profession_verify.dart';
import 'relation.dart';
import 'vip.dart';

part 'card.g.dart';

@JsonSerializable()
class Card {
  Avatar? avatar;
  String? mid;
  String? name;
  bool? approve;
  String? rank;
  String? face;
  @JsonKey(name: 'DisplayRank')
  String? displayRank;
  int? regtime;
  int? spacesta;
  String? birthday;
  String? place;
  String? description;
  int? article;
  dynamic attentions;
  int fans;
  int? friend;
  int attention;
  String? sign;
  @JsonKey(name: 'level_info')
  LevelInfo? levelInfo;
  Pendant? pendant;
  Nameplate? nameplate;
  @JsonKey(name: 'official_verify')
  OfficialVerify? officialVerify;
  @JsonKey(name: 'profession_verify')
  ProfessionVerify? professionVerify;
  Vip? vip;
  int? silence;
  @JsonKey(name: 'end_time')
  int? endTime;
  @JsonKey(name: 'silence_url')
  String? silenceUrl;
  Likes? likes;
  Achieve? achieve;
  @JsonKey(name: 'pendant_url')
  String? pendantUrl;
  @JsonKey(name: 'pendant_title')
  String? pendantTitle;
  // @JsonKey(name: 'pr_info')
  // PrInfo? prInfo;
  Relation? relation;
  @JsonKey(name: 'is_deleted')
  int? isDeleted;
  Honours? honours;
  // Profession? profession;
  // School? school;
  @JsonKey(name: 'space_tag')
  List<Item>? spaceTag;
  @JsonKey(name: 'face_nft_new')
  int? faceNftNew;
  @JsonKey(name: 'has_face_nft')
  bool? hasFaceNft;
  @JsonKey(name: 'nft_certificate')
  NftCertificate? nftCertificate;
  Entrance? entrance;
  @JsonKey(name: 'nft_id')
  String? nftId;
  @JsonKey(name: 'nft_face_icon')
  dynamic nftFaceIcon;
  @JsonKey(name: 'space_tag_bottom')
  List<Item>? spaceTagBottom;
  @JsonKey(name: 'digital_id')
  String? digitalId;
  @JsonKey(name: 'digital_type')
  int? digitalType;
  @JsonKey(name: 'has_digital_asset')
  bool? hasDigitalAsset;

  Card({
    this.avatar,
    this.mid,
    this.name,
    this.approve,
    this.rank,
    this.face,
    this.displayRank,
    this.regtime,
    this.spacesta,
    this.birthday,
    this.place,
    this.description,
    this.article,
    this.attentions,
    required this.fans,
    this.friend,
    required this.attention,
    this.sign,
    this.levelInfo,
    this.pendant,
    this.nameplate,
    this.officialVerify,
    this.professionVerify,
    this.vip,
    this.silence,
    this.endTime,
    this.silenceUrl,
    this.likes,
    this.achieve,
    this.pendantUrl,
    this.pendantTitle,
    // this.prInfo,
    this.relation,
    this.isDeleted,
    this.honours,
    // this.profession,
    // this.school,
    this.spaceTag,
    this.faceNftNew,
    this.hasFaceNft,
    this.nftCertificate,
    this.entrance,
    this.nftId,
    this.nftFaceIcon,
    this.spaceTagBottom,
    this.digitalId,
    this.digitalType,
    this.hasDigitalAsset,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
