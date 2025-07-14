import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_images.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/common_widgets/app_search_bar.dart';
import 'package:malooz/features/common_widgets/build_common_list_tile.dart';
import '../../../../core/utls/utls.dart';

class WatchHistoryScreen extends StatelessWidget {
  const WatchHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: Utils.appBar(context: context, title: 'Watch History', isTitleCenter: false,backgroundColor: Colors.black),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            AppSearchBar(),
            const SizedBox(height: 8,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12,),
                    Text("Today", style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),),
                    const SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(5, (index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: BuildCommonListTile(
                            leadingImagePath: AppImages.movie,
                            title: "Match starts in 15 mins! ( link to stream)",
                            subTitle1: 'Malooz TV',
                            subTitle2: "120k views",
                            tileColor: Colors.transparent,
                            trailing: const Icon(Icons.more_vert,color: Colors.white70,),
                          ),
                        );
                      }),
                    ),
                    Text("yesterday", style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),),
                    const SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(5, (index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: BuildCommonListTile(
                            leadingImagePath: AppImages.movie,
                            title: "Match starts in 15 mins! ( link to stream)",
                            subTitle1: 'Malooz TV',
                            subTitle2: "120k views",
                            tileColor: Colors.transparent,
                            trailing: const Icon(Icons.more_vert,color: Colors.white70,),
                          ),
                        );
                      }),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
