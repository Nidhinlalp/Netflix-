import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/scren_search.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //left side
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_outlined,
                      color: kwhite,
                      size: 30,
                    ),
                  ),
                ),

                ///right side
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    ),
                    VideoActionsWidget(
                      icon: Icons.emoji_emotions_outlined,
                      title: 'LOL',
                    ),
                    VideoActionsWidget(
                      icon: Icons.add,
                      title: 'My List',
                    ),
                    VideoActionsWidget(
                      icon: Icons.telegram_sharp,
                      title: 'Share',
                    ),
                    VideoActionsWidget(
                      icon: Icons.play_arrow,
                      title: 'Play',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhite,
            size: 40,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kwhite,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
