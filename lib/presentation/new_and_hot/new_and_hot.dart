import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/coutom_home_icon_widget.dart';
import 'package:netflix/presentation/new_and_hot/comming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/every_one_see_widget.dart';
import 'package:netflix/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast_outlined,
                color: kwhite,
              ),
              kwidth,
              Container(
                width: 25,
                height: 20,
                color: Colors.blue,
              ),
              kwidth,
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: backgroundColor,
              unselectedLabelColor: kwhite,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kwhite,
                borderRadius: kRadius30,
              ),
              tabs: const [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          buildCommingSoon(),
          buildEveryoneWatching(),
        ]),
      ),
    );
  }
}

Widget buildEveryoneWatching() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const EveryOneWatchingWidget(),
  );
}

Widget buildCommingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const CommingSoonWidget(),
  );
}
