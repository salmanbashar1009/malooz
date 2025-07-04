import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_colors.dart';
import '../constant/app_padding.dart';

class Utils {
  /// app logo
  static Widget AppLogo({double? width, double? height}) {
    return Image.asset(
      "assets/images/onboarding/logo.png",
      width: width ?? 250,
      height: height ?? 75,
    );
  }

  /// app primary button
  static Widget primaryButton(
      {required String title,
      required VoidCallback onPressed,
      double? height,
      double? width}) {
    return SizedBox(
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
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: AppColors.black,
                fontSize: 16),
          )),
    );
  }

  /// custom tile
  static Widget customTile({
    required Widget child,
    double? height,
    double? width,
    bool? isSelected,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      alignment: Alignment.center,
      padding: AppPadding.padding(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 0),
      decoration: BoxDecoration(
          color: AppColors.white5,
          border: Border.all(
              color: isSelected == true
                  ? AppColors.primaryColor
                  : AppColors.white6),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }

  /// custom circle
  static Widget customCircle(
      {required Widget child,
      double? width,
      double? height,
      EdgeInsets? padding}) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: Color(0xFF131517), shape: BoxShape.circle),
      child: child,
    );
  }

  /// app back button
  static Widget backButton({required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap ,
      child: Icon(Icons.arrow_back_ios),
    );
  }
}
