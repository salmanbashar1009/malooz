import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constant/app_colors.dart';
import 'build_subscription_card.dart';

class WeekllySubscription extends StatelessWidget {
  const WeekllySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return BuildSubscriptionCard(
      title: "Weekly",
      description: '- Best for Weekly Entertainment',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$19.99",style: textTheme.copyWith(
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
      ],
    );
  }
}
