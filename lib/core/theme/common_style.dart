import 'package:flutter/material.dart';

import '../constant/app_colors.dart';


class CommonStyle{
  static InputDecorationTheme light = InputDecorationTheme(
    // contentPadding: AppPadding.paddingHorizontal,
    hintStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black45,fontSize: 14),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white10),
        borderRadius: BorderRadius.circular(5)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white10),
        borderRadius: BorderRadius.circular(5)
    ),
  );
}