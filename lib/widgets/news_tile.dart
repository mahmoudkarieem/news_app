import 'package:flutter/material.dart';
import 'package:weather_app_test/models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.article,
  });
  final NewsModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            article.image ??
                'https://img.freepik.com/free-photo/colleagues-working-together-project_23-2149286162.jpg?t=st=1710703063~exp=1710703663~hmac=f3023537f74d91eb0df7718073707ea50ecdd2df948261ba0467cd0a23ab87fe',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          maxLines: 2,
          article.tittle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          article.desc ?? 'text',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
