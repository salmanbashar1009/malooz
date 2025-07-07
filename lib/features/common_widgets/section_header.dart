import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final bool? seeMore;

  const SectionHeader({super.key, required this.title, this.seeMore = false});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColors.white, fontWeight: FontWeight.w500),
      ),
      seeMore == true
          ? Text(
              'See more',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w400),
            )
          : Row(children: const [
              Icon(
                Icons.chevron_left,
                color: AppColors.white,
                size: 18,
              ),
              Icon(
                Icons.chevron_right,
                color: AppColors.white,
                size: 18,
              )
            ])
    ]);
  }
}
