import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/utls/utls.dart';

import '../../../common_widgets/build_common_list_tile.dart';

class FavouriteListScreen extends StatelessWidget {
  const FavouriteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.appBar(
          context: context, title: 'Favourites', isTitleCenter: false,backgroundColor: AppColors.black),
      body: Column(
        children: [

          Expanded(
            child: Utils.buildList(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                widget: (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: BuildCommonListTile(
                      leadingImagePath: 'assets/images/home/movie.png',
                      title: 'Match starts in 15 minutes!(link to stream)',
                      trailing: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      subTitle1: 'Malooz TV',
                      subTitle2: '120k views',
                      tileColor: AppColors.white10,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
