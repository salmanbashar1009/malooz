import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_padding.dart';

class GetPremiumTile extends StatelessWidget {
  const GetPremiumTile({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: AppPadding.padding16,
        decoration: BoxDecoration(
            color: AppColors.white5,
            border: Border.all(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(AppImages.premium),fit: BoxFit.cover)
              ),
            ),
            const SizedBox(width: 13,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Get Premium',style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),),
                const SizedBox(width: 10,),
                Text('Generated faux Swedish fir the massage!',style: textTheme.bodySmall?.copyWith(
                    color: AppColors.white80
                ),)
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios,color: AppColors.white,size: 20,)
          ],
        ),
      ),
    );
  }
}
