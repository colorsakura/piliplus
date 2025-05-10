import 'package:PiliPlus/models/dynamics/article_list/article.dart';
import 'package:PiliPlus/models/dynamics/article_list/author.dart';
import 'package:PiliPlus/models/dynamics/article_list/list.dart';

class ArticleListData {
  ArticleList? list;
  List<Article>? articles;
  Author? author;
  bool? attention;

  ArticleListData({
    this.list,
    this.articles,
    this.author,
    this.attention,
  });

  factory ArticleListData.fromJson(Map<String, dynamic> json) =>
      ArticleListData(
        list: json['list'] == null
            ? null
            : ArticleList.fromJson(json['list'] as Map<String, dynamic>),
        articles: (json['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
            .toList(),
        author: json['author'] == null
            ? null
            : Author.fromJson(json['author'] as Map<String, dynamic>),
        attention: json['attention'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'list': list?.toJson(),
        'articles': articles?.map((e) => e.toJson()).toList(),
        'author': author?.toJson(),
        'attention': attention,
      };
}
