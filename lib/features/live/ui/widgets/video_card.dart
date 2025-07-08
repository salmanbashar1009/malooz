import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../core/constant/app_images.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, this.index });
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: AppPadding.padding(horizontal: 5, vertical: 5),
      margin: EdgeInsets.only( right: index == 9 ? 16:8, left: index == 0 ? 16 : 8),
      height: 130,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(AppImages.live
        ),fit: BoxFit.cover)),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(30) ,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: AppPadding.padding(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.white2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.visibility_outlined,color: AppColors.midGrey,size: 12,),
                SizedBox(width: 4,),
                Text("10k",style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.midGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 10
                ),)
              ],
            ),
          ),
        ),
      ),
      );
  }
}
