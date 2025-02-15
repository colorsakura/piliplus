class ReplyContent {
  ReplyContent({
    this.message,
    this.atNameToMid, // @的用户的mid null
    this.members, // 被@的用户List 如果有的话 []
    this.emote, // 表情包 如果有的话 null
    this.jumpUrl, // {}
    this.pictures, // {}
    this.vote,
    this.richText,
    this.topicsMeta,
  });

  String? message;
  Map? atNameToMid;
  List<MemberItemModel>? members;
  Map? emote;
  Map? jumpUrl;
  List? pictures;
  Map? vote;
  Map? richText;
  Map? topicsMeta;

  ReplyContent.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    atNameToMid = json['at_name_to_mid'] ?? {};
    members = (json['members'] as List?)
        ?.map<MemberItemModel>((e) => MemberItemModel.fromJson(e))
        .toList();
    emote = json['emote'] ?? {};
    jumpUrl = json['jump_url'] ?? {};
    pictures = json['pictures'] ?? [];
    vote = json['vote'] ?? {};
    richText = json['rich_text'] ?? {};
    topicsMeta = json['topics_meta'] ?? {};
  }
}

class MemberItemModel {
  MemberItemModel({
    required this.mid,
    required this.uname,
  });

  late String mid;
  late String uname;

  MemberItemModel.fromJson(Map<String, dynamic> json) {
    mid = json['mid'];
    uname = json['uname'];
  }
}
