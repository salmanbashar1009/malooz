import 'package:flutter/material.dart';

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

    return Utils.customTile(
        child: TextFormField(
          controller: textController,
          cursorColor: AppColors.whiteGrey,
          decoration: InputDecoration(
              label: Text(label ?? ''),
              labelStyle: textTheme.bodyMedium,
              prefixIcon: Icon(
                icon,
                color: AppColors.whiteGrey,
              ),
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.check_circle,
                color: AppColors.primaryColor,
                size: 18,
              )),
        ));
  }
}
