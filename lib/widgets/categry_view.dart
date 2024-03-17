import 'package:flutter/material.dart';
import 'package:weather_app_test/widgets/news_tile_builder.dart';

class CategryView extends StatelessWidget {
  const CategryView({super.key, required this.categry});
  final String categry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            NewTileBuilder(
              categry: categry,
            )
          ],
        ),
      ),
    );
  }
}
