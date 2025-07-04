import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.white10,
            thickness: 1,
            indent: 20,
            endIndent: 10,
          ),
        ),
        Text(
          title,
          style: textTheme.bodySmall?.copyWith(
              color: AppColors.whiteGrey,
              fontWeight: FontWeight.w500
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.white10,
            thickness: 1,
            indent: 10,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}