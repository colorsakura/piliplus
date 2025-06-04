import 'package:PiliPlus/models/dynamics/article_content_model.dart';

class ArticleOpus {
  int? opusid;
  int? opussource;
  String? title;
  List<ArticleContentModel>? content;

  ArticleOpus.fromJson(Map<String, dynamic> json) {
    opusid = json['opus_id'];
    opussource = json['opus_source'];
    title = json['title'];
    if (json['content']?['paragraphs'] is List) {
      content = (json['content']['paragraphs'] as List)
          .map((i) => ArticleContentModel.fromJson(i))
          .toList();
    }
  }
}
