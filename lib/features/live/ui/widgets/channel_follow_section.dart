import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/utls/utls.dart';

class ChannelFollowSection extends StatelessWidget {
  const ChannelFollowSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme ;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage(AppImages.channel),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Malooz TV',
              style: textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              '2M Followers',
              style: textTheme.bodySmall
                  ?.copyWith(color: AppColors.white),
            ),
          ],
        ),
        const Spacer(),
        Utils.primaryButton(
            title: "Follow",
            onPressed: () {},
            width: 60,
            height: 24,
            fontSize: 12,
            backgroundColor: AppColors.midGrey,
            textColor: AppColors.black)
      ],
    );
  }
}
