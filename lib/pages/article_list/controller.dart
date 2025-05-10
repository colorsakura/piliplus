import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/article_list/article.dart';
import 'package:PiliPlus/models/dynamics/article_list/author.dart';
import 'package:PiliPlus/models/dynamics/article_list/data.dart';
import 'package:PiliPlus/models/dynamics/article_list/list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';

class ArticleListController
    extends CommonListController<ArticleListData, Article> {
  final id = Get.parameters['id'];

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  ArticleList? list;
  Author? author;

  @override
  List<Article>? getDataList(ArticleListData response) {
    list = response.list;
    author = response.author;
    return response.articles;
  }

  @override
  Future<LoadingState<ArticleListData>> customGetData() =>
      DynamicsHttp.articleList(id: id);
}
