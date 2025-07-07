import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(height: 40, child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 0),
        hintText: "Search  by title, actor, competition",
        hintStyle:  textTheme.bodySmall?.copyWith(color: AppColors.white20),
        fillColor: AppColors.white10,
        prefixIcon: const Icon(Icons.search,color: AppColors.white20,size: 18,),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white6),
            borderRadius: BorderRadius.circular(99)
        ),

      ),
    ));
  }
}