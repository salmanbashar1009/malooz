import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';

class RememberForgetPasswordSection extends StatelessWidget {
  const RememberForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Icon(
          Icons.check_box,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Text("Remember me",
            style: textTheme.bodySmall?.copyWith(
                color: AppColors.white, fontWeight: FontWeight.w500)),
        const Spacer(),
        Text("Forgot Password?",
            style: textTheme.bodySmall?.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}