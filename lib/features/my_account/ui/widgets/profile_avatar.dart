import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                color: AppColors.buttonColor,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(AppImages.live),fit: BoxFit.cover)
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor
              ),
              child: Icon(Icons.edit_outlined,color: AppColors.white,size: 12,),

            ),
          )
        ],
      ),
    );
  }
}
