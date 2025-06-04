import 'package:PiliPlus/models/model_hot_video_item.dart';

class MemberCoinsDataModel extends HotVideoItemModel {
  String? subtitle;
  int? coins;
  int? time;
  String? resourceType;

  MemberCoinsDataModel.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    coins = json['coins'];
    subtitle = json['subtitle'];
    time = json['time'];
    resourceType = json['resource_type'];
    redirectUrl = json['redirect_url'];
  }
}
