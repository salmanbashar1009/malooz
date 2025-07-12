import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/Auth/shared_widgets/password_input_field.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/utls/utls.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: Utils.appBar(context: context, title: "Create New Password", isTitleCenter: false),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
             Image.asset(AppImages.forgotPassword,width: 95,height: 95,),
            const SizedBox(
              height: 58,
            ),
            Text(
              "Create new Password",
              style: textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordInputField()

        ]
      ),
      )
    );
  }
}
