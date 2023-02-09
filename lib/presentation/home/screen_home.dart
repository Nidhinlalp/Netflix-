import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/baground_card.dart';
import 'package:netflix/presentation/home/number_title_card.dart';
import 'package:netflix/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifire = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifire,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifire.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifire.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    HomeFirstContainer(),
                    khight,
                    MainTitleCard(title: "Released in the past year"),
                    khight,
                    MainTitleCard(title: "Trending Now"),
                    khight,
                    NumberTitleCard(),
                    khight,
                    MainTitleCard(title: " Tense Dramas"),
                    khight,
                    MainTitleCard(title: "Sout indian Cinema"),
                  ],
                ),
                scrollNotifire.value == true
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 1500),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://proofmart.com/wp-content/uploads/2021/06/598-2-1.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast_outlined,
                                  color: kwhite,
                                ),
                                kwidth,
                                Container(
                                  width: 25,
                                  height: 25,
                                  color: Colors.blue,
                                ),
                                kwidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: kHometext,
                                ),
                                Text(
                                  'Movies',
                                  style: kHometext,
                                ),
                                Text(
                                  'Categories',
                                  style: kHometext,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : khight
              ],
            ),
          );
        },
      ),
    );
  }
}

TextButton PlayButton() {
  return TextButton.icon(
    onPressed: () {},
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: backgroundColor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        "Play",
        style: TextStyle(
            fontSize: 20, color: backgroundColor, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
