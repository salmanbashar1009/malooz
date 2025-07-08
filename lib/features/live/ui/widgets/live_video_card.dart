import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_icons.dart';
import '../../../../core/constant/app_images.dart';

class LiveVideoCard extends StatelessWidget {
  const LiveVideoCard({super.key,this.index = 0});

  final int? index ;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin:  EdgeInsets.only( right: index == 9 ? 16:8 , left: index == 0 ? 16 :8),
      width: 250,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle,
                color: AppColors.grey,
                size: 25,
              ),
              const SizedBox(
                width: 6,
              ),
              Text('Premier League',
                  style:
                      textTheme.bodyMedium?.copyWith(color: AppColors.black)),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.midGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AppIcons.liveIndicator, height: 10, width: 10),
                    SizedBox(width: 4),
                    Text('Live',
                        style: textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500, color: AppColors.red)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AppImages.live, // Place your image in assets and reference here
              height: 108,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Real madrid vs Barcelona', style: textTheme.bodyMedium?.copyWith(color: AppColors.black,fontWeight: FontWeight.w500)),
              Icon(Icons.more_vert,color: AppColors.grey,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.channel),
                    fit: BoxFit.cover,
                  ),

                ),
              ),
              const SizedBox(width: 8,),
              Text('Malooz TV', style: textTheme.bodyMedium?.copyWith(color: AppColors.black,fontWeight: FontWeight.w500)),

            ],
          ),
        ],
      ),
    );
  }
}
