import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/app_colors.dart';
import 'build_subscription_card.dart';

class MonthlySubscription extends StatelessWidget {
  const MonthlySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return BuildSubscriptionCard(
      title: "Monthly",
      description: '- Get 10% Discount',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$59.99",
                  style: textTheme.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: AppColors.white40,
                    decoration: TextDecoration.lineThrough
                ),),
                Text("Before - per month",style: textTheme.copyWith(
                    color: AppColors.white60
                ),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$53.99",style: textTheme.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: AppColors.white
                ),),
                Text("Now - per month",style: textTheme.copyWith(
                    color: AppColors.white60
                ),),
              ],
            ),
          ],
        ),
        const SizedBox(height: 18,),
        Text("Get all upgradation benefits for a month")
      ],
    );
  }
}
