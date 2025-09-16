import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_padding.dart';
import '../../../../core/utls/utls.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.details), fit: BoxFit.cover),
      ),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.gradient5,
                AppColors.black.withAlpha(170),
                AppColors.black
              ]),
        ),
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Utils.backButton(onTap: () {}),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IN THE LOST LANDS 2025',
                        style: textTheme.titleMedium),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 10,
                      children: [
                        RatingBar.builder(
                          ignoreGestures: true,
                          textDirection: TextDirection.ltr,
                          initialRating: 3.5,
                          minRating: 1,
                          itemSize: 16,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.only(right: 8),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        ),
                        Text(
                          "3.5",
                          style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  spacing: 8,
                  children: [
                    Container(
                      padding: AppPadding.padding(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.white),
                      child: Icon(
                        Icons.favorite_border,
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      "10k",
                      style: textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500, color: AppColors.white),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
