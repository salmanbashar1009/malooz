import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(height: 40, child: TextFormField(
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
      )),
      centerTitle: true,

      actionsPadding: const EdgeInsets.only(right: 12,),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 40,
              color: AppColors.grey,
            ))
      ],
    );
  }
}
