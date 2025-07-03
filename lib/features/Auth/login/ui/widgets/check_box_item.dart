import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';

class CheckBoxItem extends StatelessWidget {
  const CheckBoxItem({super.key, required this.title, required this.isChecked, required this.onTap,  this.iconShape});

  final String title;
  final bool isChecked;
  final VoidCallback onTap;
  final BoxShape? iconShape;
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Wrap(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isChecked ? AppColors.primaryColor : AppColors.transparent,
                border: Border.all(color: AppColors.whiteGrey),
                shape: iconShape ?? BoxShape.circle
            ),
          ),
          const SizedBox(width: 10,),
          Text(title,style: textTheme.bodyMedium)
        ],
      ),
    );
  }
}
