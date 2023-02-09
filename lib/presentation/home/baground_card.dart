import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/coutom_home_icon_widget.dart';
import 'package:netflix/presentation/home/screen_home.dart';

class HomeFirstContainer extends StatelessWidget {
  const HomeFirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainimage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtomWidget(icon: Icons.add, title: "My List"),
                PlayButton(),
                const CustomButtomWidget(
                    icon: Icons.info_outline, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }
}
