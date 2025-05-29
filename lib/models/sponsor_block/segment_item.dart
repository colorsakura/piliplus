class SegmentItemModel {
  String cid;
  String category;
  String actionType;
  List<int> segment;
  String uuid;
  double videoDuration;

  SegmentItemModel({
    required this.cid,
    required this.category,
    required this.actionType,
    required this.segment,
    required this.uuid,
    required this.videoDuration,
  });

  factory SegmentItemModel.fromJson(Map<String, dynamic> json) =>
      SegmentItemModel(
        cid: json["cid"],
        category: json["category"],
        actionType: json["actionType"],
        segment:
            List<int>.from(json["segment"]!.map((x) => (x as num).round())),
        uuid: json["UUID"],
        videoDuration: (json["videoDuration"] as num).toDouble(),
      );
}
