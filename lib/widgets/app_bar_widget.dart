import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
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
    );
  }
}
