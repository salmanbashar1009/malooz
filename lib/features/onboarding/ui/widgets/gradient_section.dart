import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class GradientSection extends StatelessWidget {
  const GradientSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.black.withAlpha(200),
                AppColors.black.withAlpha(100),
                AppColors.black.withAlpha(200),
              ])),
    );
  }
}
