import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/home/coutom_home_icon_widget.dart';
import 'package:netflix/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                children: [
                  const Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: -4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtomWidget(
                        icon: Icons.notifications_active_outlined,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 13,
                      ),
                      kwidth,
                      CustomButtomWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        iconSize: 20,
                        textSize: 13,
                      ),
                      kwidth
                    ],
                  ),
                ],
              ),
              khight,
              const Text(
                "Comming on Friday",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              khight20,
              const Text(
                'Thall Girl 2',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              khight,
              const Text(
                "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her condidence -- and her releshtionship -- into a tallispin.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
