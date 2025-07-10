import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constant/app_colors.dart';

class PremiumIntroSection extends StatelessWidget {
  const PremiumIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upgrade To \nPremium",
          style: textTheme.copyWith(fontSize: 34, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '''Make the choice now to upgrade your plan to \nget full features of malooz TV.''',
          style: textTheme,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          'What does premium include?',
          style: textTheme.copyWith(fontSize: 16, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 12,
        ),
        buildPremiumFeature(
          textTheme: textTheme,
          title: "Watch any movie and show.",
        ),
        const SizedBox(
          height: 12,
        ),
        buildPremiumFeature(
          textTheme: textTheme,
          title: "Watch full length live sessions.",
        ),
        const SizedBox(
          height: 12,
        ),
        buildPremiumFeature(
          textTheme: textTheme,
          title: "Download any movie and show",
        ),
      ],
    );
  }

  Row buildPremiumFeature({
    required TextStyle textTheme,
    required String title,
  }) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: AppColors.white,
          size: 18,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: textTheme.copyWith(color: AppColors.white60),
        )
      ],
    );
  }
}
