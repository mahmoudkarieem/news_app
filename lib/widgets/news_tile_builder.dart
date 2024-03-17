import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_test/models/news_model.dart';
import 'package:weather_app_test/services/news_servicess.dart';
import 'package:weather_app_test/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class NewTileBuilder extends StatefulWidget {
  NewTileBuilder({super.key, required this.categry});
  final String categry;

  @override
  State<NewTileBuilder> createState() => _NewTileBuilderState();
}

class _NewTileBuilderState extends State<NewTileBuilder> {
  List<NewsModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    newMethod();
    super.initState();
  }

  Future<void> newMethod() async {
    articles = await NewsService(Dio()).getNews(categry: widget.categry);
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return NewsTile(
                  article: articles[index],
                );
              },
            ),
          );
  }
}
