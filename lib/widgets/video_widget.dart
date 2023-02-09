import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/tFlSDoWQsAZ2qjICKzfP5Yw6zM5.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black26,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_outlined,
                color: kwhite,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
