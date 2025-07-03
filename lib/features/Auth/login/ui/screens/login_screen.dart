import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/features/Auth/login/ui/widgets/check_box_item.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_padding.dart';
import '../../../../../core/utls/utls.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            children: [
              const SizedBox(height: 16,),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Signup"),
              ),
              const SizedBox(height: 28,),
              Utils.AppLogo(width: 180),
              const SizedBox(height: 34,),
              Text("Login",style: textTheme.titleMedium),
              const SizedBox(height: 8,),
              Text("Enter following details to login.",style: textTheme.bodySmall),
              const SizedBox(height: 14,),
              Utils.customTile(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CheckBoxItem(title: "Phone Number", isChecked: true, onTap: (){}),
                    CheckBoxItem(title: "Email Address", isChecked: false, onTap: (){}),
                  ],
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}
