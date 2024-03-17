import 'package:flutter/material.dart';
import 'package:weather_app_test/widgets/list_cards.dart';

import 'package:weather_app_test/widgets/news_tile_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Cloud',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ListNewsCards()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              NewTileBuilder(
                categry: 'general',
              )
            ],
          ),
        ));
  }
}
