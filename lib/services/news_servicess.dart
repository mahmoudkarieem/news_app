import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:weather_app_test/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<dynamic> getNews({required String categry}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a97cfbf64ac643ab93c924f0240892f2&category=$categry');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articleList = [];
      for (var article in articles) {
        NewsModel articleModel = NewsModel(
            tittle: article['title'],
            image: article['urlToImage'],
            desc: article['description']);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      print(e.toString());
    }
  }
}
