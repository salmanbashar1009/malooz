import 'package:flutter/material.dart';

import '../constant/app_colors.dart';


class CommonStyle{
  static InputDecorationTheme dark = InputDecorationTheme(
    // contentPadding: AppPadding.paddingHorizontal,
    filled: true,
    fillColor: AppColors.white5,
    border: InputBorder.none,
    hintStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black45,fontSize: 14),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white6),
        borderRadius: BorderRadius.circular(99)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(99)
    ),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white6),
        borderRadius: BorderRadius.circular(99)
    )
  );
}