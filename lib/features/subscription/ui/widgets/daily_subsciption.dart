import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/app_colors.dart';
import 'build_subscription_card.dart';

class DailySubscription extends StatelessWidget {
  const DailySubscription({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return BuildSubscriptionCard(
        title: "Daily",
        description: "- Best for daily Entertainment",
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$2.99",style: textTheme.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: AppColors.white
                  ),),
                  Text("Per Day",style: textTheme.copyWith(
                      color: AppColors.white60
                  ),),
                ],
              ),
              Text("Cancel Anytime")
            ],
          )
        ]
    );
  }
}
