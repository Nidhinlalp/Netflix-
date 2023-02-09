import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/scren_search.dart';
import 'package:netflix/presentation/search/widget/search_title.dart';

import '../../../core/size/constsaize.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(
          title: 'Top Searches',
        ),
        khight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchItemTile(),
            separatorBuilder: (context, index) => khight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
