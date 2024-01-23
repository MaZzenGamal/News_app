import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
              'https://newsapi.org/v2/top-headlines?country=us&apiKey=900e3e7bff394f4081716b0c83b5fde6&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
            ArticleModel articleModel = ArticleModel.fromJson(article);
            articlesList.add(articleModel);
          }
      return articlesList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
