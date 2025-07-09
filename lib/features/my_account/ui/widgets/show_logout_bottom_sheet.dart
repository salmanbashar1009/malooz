import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';

import '../../../../core/utls/utls.dart';

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: AppColors.bottomSheetColor,
      builder: (BuildContext context) {
        return SizedBox(
          height: 230,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Logout',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Are you sure want to log out?',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Utils.primaryButton(
                      title: 'Cancel',
                      onPressed: () {},
                      borderRadius: 3,
                      backgroundColor: Color(0xFFFFEDF0),
                      width: 110),
                  const SizedBox(
                    width: 45,
                  ),
                  Utils.primaryButton(
                      title: 'Logout',
                      textColor: AppColors.white,
                      onPressed: () {},
                      width: 110,
                      backgroundColor: AppColors.red,
                      borderRadius: 3),
                ],
              )
            ],
          ),
        );
      });
}
