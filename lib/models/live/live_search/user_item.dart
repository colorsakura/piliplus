class LiveSearchUserItemModel {
  String? face;
  String? name;
  int? liveStatus;
  String? areaName;
  int? fansNum;
  List? roomTags;
  int? roomid;
  String? link;

  LiveSearchUserItemModel({
    this.face,
    this.name,
    this.liveStatus,
    this.areaName,
    this.fansNum,
    this.roomTags,
    this.roomid,
    this.link,
  });

  factory LiveSearchUserItemModel.fromJson(Map<String, dynamic> json) =>
      LiveSearchUserItemModel(
        face: json['face'] as String?,
        name: json['name'] as String?,
        liveStatus: json['live_status'] as int?,
        areaName: json['areaName'] as String?,
        fansNum: json['fansNum'] as int?,
        roomTags: json['roomTags'],
        roomid: json['roomid'] as int?,
        link: json['link'] as String?,
      );
}
