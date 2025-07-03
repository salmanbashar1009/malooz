import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

class Utils{
  /// app logo
  static Widget AppLogo({ double? width,  double? height}){
    return Image.asset(
      "assets/images/onboarding/logo.png",
      width: width ?? 250,
      height: height ?? 75,
    );
  }

  // app primary button
 static Widget primaryButton({required String title, required VoidCallback onPressed, double? height, double? width}){
    return  SizedBox(
      height: height ?? 48,
      width: width ?? double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(78))),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.black),
          )),
    );
 }
}