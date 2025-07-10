import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/app_colors.dart';

class SelectPaymentMethod extends StatelessWidget {
  const SelectPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white70
    );
    return DropdownButtonFormField(
        icon: Icon(Icons.keyboard_arrow_down,color: AppColors.midGrey,),
        decoration: InputDecoration(
          labelText: "Select Payment Method",
          labelStyle: textTheme.copyWith(
              fontWeight: FontWeight.w400
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.white6)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.white6)
          ),

        ),
        items: [],
        onChanged: (value){});
  }
}
