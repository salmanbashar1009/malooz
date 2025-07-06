import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontal16,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.white, fontWeight: FontWeight.w500),
        ),
        Row(children: const [
          Icon(Icons.chevron_left, color: AppColors.white, size: 18,),
          Icon(Icons.chevron_right, color: AppColors.white, size: 18,)
        ])
      ]),
    );
  }
}
