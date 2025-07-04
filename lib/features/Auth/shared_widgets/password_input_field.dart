import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/utls/utls.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key, this.passwordController, this.label, this.icon});

  final TextEditingController? passwordController;
  final String? label;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Utils.customTile(
      horizontalPadding: 0,
        child: TextFormField(
          controller: passwordController,
          cursorColor: AppColors.whiteGrey,
          decoration: InputDecoration(
              label: Text(label ?? ''),
              labelStyle: textTheme.bodyMedium,
              prefixIcon: icon,
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.visibility_off,
                color: AppColors.whiteGrey,
                size: 18,
              )),
        ));
  }
}
