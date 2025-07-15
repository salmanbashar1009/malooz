import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.suffixIcon
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
        height: 40,
        child: TextFormField(
          focusNode: focusNode,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 0),
            hintText: "Search  by title, actor, competition",
            hintStyle: textTheme.bodySmall?.copyWith(color: AppColors.white20),
            fillColor: AppColors.white5,
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.white20,
              size: 18,
            ),
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.white6),
                borderRadius: BorderRadius.circular(99)),
          ),
          onChanged: onChanged,
        ));
  }
}
