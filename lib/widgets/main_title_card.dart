import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/widgets/main_card.dart';
import 'package:netflix/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: MainTitle(title: title),
        ),
        khight,
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: MainCards(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
