import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/core/utls/utls.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Scaffold(
      appBar: Utils.appBar(
          context: context, title: "Forgot Password", isTitleCenter: false),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              AppImages.forgotPassword,
              width: 95,
              height: 95,
            ),
            const SizedBox(
              height: 58,
            ),
            Text(
              "Select which contact details should we use to reset your password ",
              style: textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 27,
            ),
            buildContainer(context: context,
                prefixIcon: Icon(
                    Icons.email, size: 20, color: AppColors.whiteGrey),
                label: "Email", value: 'flutter@gmail.com'),
            const SizedBox(height: 14,),
            buildContainer(context: context,
                prefixIcon: Icon(
                    Icons.message_outlined, size: 20, color: AppColors.whiteGrey),
                label: "SMS", value: '+0123456789'),
            const Spacer(),
            Utils.primaryButton(title: "Continue", onPressed: (){
              Navigator.pushNamed(context, RouteNames.forgotPasswordOtpScreen);
            }),
            const SizedBox(height: 75,),

          ],
        ),
      ),
    );
  }

  Widget buildContainer(
      {required BuildContext context, required Icon prefixIcon, String? label, String? value}) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: AppPadding.padding(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white5,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.white6,
        ),
      ),
      child: Row(
        children: [
          prefixIcon,
          const SizedBox(width: 12),
          SizedBox(
            height: 20, // Set height to make VerticalDivider visible
            child: VerticalDivider(
              color: AppColors.white6,
              thickness: 1,
              width: 1,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label ?? '',
                style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Text(
                value ?? '',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primaryColor,
              ),
            ),
            child: Icon(Icons.circle, color: AppColors.primaryColor, size: 16,),
          )
        ],
      ),
    );
  }
}
