import 'package:PiliPlus/pages/common/multi_select_controller.dart';

class FavArticleModel with MultiSelectData {
  FavArticleModel({
    this.webUrl,
    this.title,
    this.summary,
    this.message,
    this.pic,
    this.cvid,
    this.noteId,
  });

  String? webUrl;
  String? title;
  String? summary;
  String? message;
  String? pic;
  dynamic cvid;
  dynamic noteId;

  FavArticleModel.fromJson(Map json) {
    webUrl = json['web_url'];
    title = json['title'];
    summary = json['summary'];
    message = json['message'];
    pic = json['arc']?['pic'];
    cvid = json['cvid'];
    noteId = json['note_id'];
  }
}
