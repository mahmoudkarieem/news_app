import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_test/models/cards_model.dart';
import 'package:weather_app_test/widgets/cards_news.dart';

class ListNewsCards extends StatelessWidget {
  const ListNewsCards({super.key});

  @override
  Widget build(BuildContext context) {
    List<CardsModel> cardsList = [
      CardsModel(text: 'Business', image: 'assets/Business.jpg'),
      CardsModel(text: 'Health', image: 'assets/close-up.jpg'),
      CardsModel(text: 'Entertainment', image: 'assets/enter.jpg'),
      CardsModel(text: 'Sports', image: 'assets/Cr7.jpg'),
      CardsModel(text: 'Science', image: 'assets/science.jpg'),
      CardsModel(text: 'Technology', image: 'assets/ai.jpg'),
      CardsModel(text: 'general', image: 'assets/general.jpg'),
    ];

    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cardsList.length,
            itemBuilder: (context, index) {
              return CardNews(
                cards: cardsList[index],
              );
            }),
      ),
    );
  }
}
