import 'package:flutter/material.dart';
import 'package:malooz/features/common_widgets/app_search_bar.dart';
import '../../../../core/constant/app_colors.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppSearchBar(),
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


