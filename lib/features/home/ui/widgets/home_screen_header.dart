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
      title: SearchBar(),
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


