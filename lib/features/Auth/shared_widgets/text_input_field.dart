import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/utls/utls.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, this.textController, this.label, this.icon});

  final TextEditingController? textController;
  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: textController,
      cursorColor: AppColors.whiteGrey,
      decoration: InputDecoration(
        filled: true,
          fillColor: AppColors.white5,
          contentPadding: AppPadding.horizontal16,
          label: Text(label ?? ''),
          labelStyle: textTheme.bodyMedium,
          prefixIcon: Icon(
            icon,
            color: AppColors.whiteGrey,
          ),
          suffixIcon: Icon(
            Icons.check_circle,
            color: AppColors.primaryColor,
            size: 18,
          ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.white5
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.primaryColor
          )
        ),
      ),
    );
  }
}
