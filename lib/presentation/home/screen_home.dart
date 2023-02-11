import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/application/home/home_first_image.dart';
import 'package:netflix/application/home/home_relese_paster.dart';
import 'package:netflix/application/home/sout_indian_movie.dart';
import 'package:netflix/application/home/tense_drama.dart';
import 'package:netflix/application/home/top_10_show_in_india_today.dart';
import 'package:netflix/application/home/trending_now.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/baground_card.dart';
import 'package:netflix/presentation/home/number_title_card.dart';
import 'package:netflix/widgets/main_title_card.dart';
import 'package:netflix/widgets/netflix-profile.dart';

ValueNotifier<bool> scrollNotifire = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getHomeImage();
    getHomerelesethePastYear();
    getHomeTrendingNow();
    getHomeTendeAndDrama();
    getHomeSouthIndian();
    getHomeTop10showindia();
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
                  children: [
                    ValueListenableBuilder(
                        valueListenable: homefirstimage,
                        builder: (context, result, _) {
                          if (result.isNotEmpty) {
                            return HomeFirstContainer(
                              imageUrl: result[0].bagroudimage,
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                    khight,
                    ValueListenableBuilder(
                        valueListenable: relesethePastYear,
                        builder: (context, reslt, _) {
                          return MainTitleCard(
                            title: "Released in the past year",
                            result: reslt,
                          );
                        }),
                    khight,
                    ValueListenableBuilder(
                        valueListenable: trendingNow,
                        builder: (context, resulttensedarama, _) {
                          return MainTitleCard(
                            title: "Trending Now",
                            result: resulttensedarama,
                          );
                        }),
                    khight,
                    ValueListenableBuilder(
                        valueListenable: top10showindia,
                        builder: (context, resultofsoutindianmovie, _) {
                          return NumberTitleCard(
                            result: resultofsoutindianmovie,
                          );
                        }),
                    khight,
                    ValueListenableBuilder(
                        valueListenable: tendeAndDrama,
                        builder: (context, resultTenseDrama, _) {
                          return MainTitleCard(
                            title: " Tense Dramas",
                            result: resultTenseDrama,
                          );
                        }),
                    khight,
                    ValueListenableBuilder(
                        valueListenable: southindianmovie,
                        builder: (context, resultodfsutindianmovie, _) {
                          return MainTitleCard(
                            title: "Sout indian Cinema",
                            result: resultodfsutindianmovie,
                          );
                        }),
                  ],
                ),
                scrollNotifire.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
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
                                  size: 30,
                                  color: kwhite,
                                ),
                                kwidth,
                                const NetflixProfile(),
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

TextButton playButton() {
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
