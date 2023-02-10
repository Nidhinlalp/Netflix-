import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/coutom_home_icon_widget.dart';
import 'package:netflix/widgets/video_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Friends',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        khight,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her condidence -- and her releshtionship -- into a tallispin.",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        khight50,
        // const VideoWidget(bgimage: ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            khight,
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButtomWidget(
                icon: Icons.telegram_sharp,
                title: "Share",
                iconSize: 30,
                textSize: 15,
              ),
            ),
            kwidth20,
            CustomButtomWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 30,
              textSize: 15,
            ),
            kwidth20,
            CustomButtomWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 30,
              textSize: 15,
            ),
            kwidth20,
          ],
        )
      ],
    );
  }
}
