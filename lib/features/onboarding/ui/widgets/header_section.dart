import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_icons.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.07,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: AppPadding.paddingH16V8,
              decoration: BoxDecoration(
                  color: AppColors.white10,
                  borderRadius: BorderRadius.circular(99)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Image.asset(
                    AppIcons.webIcon,
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    "FREN",
                    style: textTheme.bodyMedium
                        ?.copyWith(color: AppColors.white),
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "HELP?",
                  style: textTheme.bodyMedium
                      ?.copyWith(color: AppColors.white),
                ))
          ],
        ),
      ),
    );
  }
}
