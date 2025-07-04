import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/utls/utls.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {
          Navigator.pop(context);
        }),
        centerTitle: true,
        title: Text(
          "Choose your interests",
          style: textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                  '''Choose your interests here and get the best movie recommendations. Don’t worrry you can always change it latter''',style: textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
