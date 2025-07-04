import 'package:flutter/material.dart';

import '../../../core/constant/app_icons.dart';
import '../../../core/constant/app_padding.dart';
import '../../../core/utls/utls.dart';

class SocialIconSection extends StatelessWidget {
  const SocialIconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        Utils.customCircle(
            padding: AppPadding.padding(horizontal: 20,vertical: 20),
            child: Image.asset(AppIcons.google,width: 24,height: 24,)
        ),
        Utils.customCircle(
            padding: AppPadding.padding(horizontal: 20,vertical: 20),
            child: Image.asset(AppIcons.facebook,width: 24,height: 24,)
        ),
        Utils.customCircle(
            padding: AppPadding.padding(horizontal: 20,vertical: 20),
            child: Image.asset(AppIcons.apple,width: 24,height: 24,)
        ),
      ],
    );
  }
}