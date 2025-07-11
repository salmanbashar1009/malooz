import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/utls/utls.dart';

import '../../../../core/constant/app_padding.dart';

Future<void> showSubscriptionSuccessAlert(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // User must tap button to dismiss
    builder: (BuildContext dialogContext) {
      final textTheme = Theme.of(context).textTheme;
      return Dialog(
        insetPadding: AppPadding.horizontal16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: const Color(0xFF272828),
        child: Container(
          // width: MediaQuery.of(context).size.width ,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 36),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 75,
                ),
              ),
              const SizedBox(height: 27),
               Text(
                'Congratulations!',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 17),
              Text(
                'You have successfully Subscribed\n1 month premium. Enjoy the benefit!',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Utils.primaryButton(title: "Finished", onPressed: (){
                Navigator.pop(context);
              })
            ],
          ),
        ),
      );
    },
  );
}
