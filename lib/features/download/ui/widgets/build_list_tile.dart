import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_padding.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    super.key,
    required this.leadingImagePath,
    required this.title,
    this.subTitle,
    this.widget,
    this.tileColor,
    this.trailing,
  });

  final String leadingImagePath;
  final String title;
  final String? subTitle;
  final Color? tileColor;
  final Widget? widget;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Image.asset(
        leadingImagePath,
        width: 65,
        height: 65,
      ),
      tileColor: tileColor ?? Color(0xFF121417),
      contentPadding: AppPadding.padding(vertical: 8, horizontal: 8),
      title: Text(
        title,
        style: textTheme.bodyMedium?.copyWith(color: AppColors.white),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subTitle ?? '',
            style: textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: Colors.white70,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 12,
          ),
          widget ?? SizedBox.shrink(),
        ],
      ),
      trailing: trailing,
    );
  }
}
