import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';

import '../widgets/build_list_tile.dart';
import '../widgets/show_delete_bottom_sheet.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: Utils.appBar(
          context: context,
          title: 'Download',
          isTitleCenter: false,
          backgroundColor: AppColors.black),
      body: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Expanded(
            child: Utils.buildList(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                widget: (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: BuildListTile(
                      leadingImagePath: 'assets/images/home/movie.png',
                      title: 'Match starts in 15 minutes!',
                      subTitle: '1hr 12min',
                       widget:  Utils.primaryButton(title: 'Watch Now',
                            width: 80,
                            height: 22,
                            borderRadius: 3,
                            fontSize: 10,
                            textColor: AppColors.white,
                            onPressed: (){

                            }),
                      trailing: GestureDetector(
                        onTap: (){
                          showDeleteBottomSheet(context);
                        },
                        child: const Icon(
                          Icons.delete_forever_outlined,
                          size: 24,
                          color: AppColors.midGrey,
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

