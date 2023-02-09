import 'package:flutter/material.dart';
import 'package:netflix/core/size/constsaize.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9PFonBhy4cQy7Jz20NpMygczOkv.jpg",
          ),
        ),
      ),
    );
  }
}
