import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_padding.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    super.key,
    required this.leadingImagePath,
    required this.title,
    this.subTitle1,
    this.subTitle2,
    this.tileColor,
    this.trailing,
  });

  final String leadingImagePath;
  final String title;
  final String? subTitle1;
  final String? subTitle2;
  final Color? tileColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.bodyMedium?.copyWith(color: AppColors.white);
    final subtitleStyle = textTheme.bodySmall?.copyWith(
      fontSize: 10,
      color: Colors.white70,
      fontWeight: FontWeight.w400,
    );

    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          leadingImagePath,
          width: 65,
          height: 75,
          fit: BoxFit.cover,
        ),
      ),
      tileColor: tileColor ?? const Color(0xFF121417),
      contentPadding: AppPadding.padding(vertical: 4, horizontal: 16),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(title, style: titleStyle)),
          if (trailing != null) ...[
            const SizedBox(width: 16),
            trailing!,
          ],
        ],
      ),
      subtitle: (subTitle1 != null || subTitle2 != null)
          ? Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            if (subTitle1 != null)
              Text(subTitle1!, style: subtitleStyle),
            if (subTitle1 != null && subTitle2 != null)
              const SizedBox(width: 24),
            if (subTitle2 != null)
              Text(subTitle2!, style: subtitleStyle),
          ],
        ),
      )
          : null,
    );
  }
}
