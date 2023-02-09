import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/constsaize.dart';
import 'package:netflix/presentation/search/widget/search_idile.dart';
import 'package:netflix/presentation/search/widget/search_result_page.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white54),
              ),
              khight,
              const Expanded(child: SearchIdleWidget()),
              //const Expanded(child: SearchResultwidget()),
            ],
          ),
        ),
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              color: kwhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
