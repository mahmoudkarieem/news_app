import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_test/models/cards_model.dart';
import 'package:weather_app_test/widgets/categry_view.dart';

class CardNews extends StatelessWidget {
  CardNews({
    super.key,
    required this.cards,
  });
  final CardsModel cards;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategryView(
              categry: cards.text,
            );
          }));
        },
        child: Container(
          child: Center(
            child: Text(
              cards.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          height: 120,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            image: DecorationImage(
              image: AssetImage(
                cards.image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
