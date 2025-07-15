import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key, this.passwordController, this.label, this.icon, this.horizontalPadding});

  final TextEditingController? passwordController;
  final String? label;
  final Icon? icon;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: passwordController,
      cursorColor: AppColors.whiteGrey,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0,),
          label: Text(label ?? ''),
          labelStyle: textTheme.bodyMedium,
          prefixIcon: icon ??  Icon(Icons.lock, color: AppColors.whiteGrey, size: 20,),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: AppColors.primaryColor
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: AppColors.white6
            ),
          ),
          suffixIcon: Icon(
            Icons.visibility_off,
            color: AppColors.whiteGrey,
            size: 18,
          )),
    );
  }
}
