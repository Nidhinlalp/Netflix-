import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/search/widget/search_title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/xZUZ9i6vVayjyhR1vRo9Bjku4h.jpg";

class SearchResultwidget extends StatelessWidget {
  const SearchResultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movie & Tv"),
        khight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              20,
              (index) {
                return const MainCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
