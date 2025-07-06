import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_padding.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.banner), fit: BoxFit.cover)),
      child: Container(
        height: 120,
        padding: AppPadding.horizontal16,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.gradient5,
              AppColors.black,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              "The Best Of Recent Cinema Is Here",
              style: textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            Text(
              '''All French and international films \nreleased immediately after their All French and international \nfilms released immediately after their theatrical release.''',
              style: textTheme.bodySmall?.copyWith(
                fontSize: 10,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 12),
                padding: AppPadding.padding(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(2)),
                child: Text(
                  "GET STARTED",
                  style: textTheme.bodySmall?.copyWith(color: AppColors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
