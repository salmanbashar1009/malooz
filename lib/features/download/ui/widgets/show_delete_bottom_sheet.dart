import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/utls/utls.dart';
import 'build_list_tile.dart';

void showDeleteBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: AppColors.bottomSheetColor,
      builder: (BuildContext context) {
        return SizedBox(
           height: 400,
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
                'Delete',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Are you sure want to delete this movie download?',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.white),
              ),
              const SizedBox(height: 26,),
              Padding(
                padding: AppPadding.padding(horizontal: 48, vertical: 0),
                child: BuildListTile(
                    leadingImagePath: 'assets/images/home/movie.png',
                    title: 'Match starts in 15 minutes!',
                    subTitle: '1hr 12min',
                    tileColor: Colors.transparent,
                    widget:  Container(
                     padding: AppPadding.padding(horizontal: 12,vertical: 2),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFEDF0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("1.5GB",style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.red
                      ),),
                    )
                ),
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      borderRadius: 3,
                      backgroundColor: Color(0xFFFFEDF0),
                      width: 110),
                  const SizedBox(
                    width: 45,
                  ),
                  Utils.primaryButton(
                      title: 'Logout',
                      textColor: AppColors.white,
                      onPressed: () {
                        // Navigator.pushNamedAndRemoveUntil(context, RouteNames.loginScreen, (context)=>false);
                      },
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
