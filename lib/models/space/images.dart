import 'package:json_annotation/json_annotation.dart';

import 'digital_info.dart';
import 'entrance_button.dart';
import 'purchase_button.dart';

part 'images.g.dart';

@JsonSerializable()
class SpaceImages {
  String? imgUrl;
  @JsonKey(name: 'night_imgurl')
  String? nightImgurl;
  @JsonKey(name: 'has_garb')
  bool? hasGarb;
  @JsonKey(name: 'goods_available')
  bool? goodsAvailable;
  @JsonKey(name: 'purchase_button')
  PurchaseButton? purchaseButton;
  @JsonKey(name: 'entrance_button')
  EntranceButton? entranceButton;
  @JsonKey(name: 'digital_info')
  DigitalInfo? digitalInfo;
  @JsonKey(name: 'collection_top_simple')
  dynamic collectionTopSimple;

  SpaceImages({
    this.imgUrl,
    this.nightImgurl,
    this.hasGarb,
    this.goodsAvailable,
    this.purchaseButton,
    this.entranceButton,
    this.digitalInfo,
    this.collectionTopSimple,
  });

  factory SpaceImages.fromJson(Map<String, dynamic> json) {
    return _$ImagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
