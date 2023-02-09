import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/number_card.dart';
import 'package:netflix/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: MainTitle(title: "Top 10 Show in india Today"),
        ),
        khight,
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: NumberCard(index: index),
              ),
            ),
          ),
        )
      ],
    );
  }
}
