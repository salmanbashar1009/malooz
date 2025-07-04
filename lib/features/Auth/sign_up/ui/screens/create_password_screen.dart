import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/Auth/shared_widgets/password_input_field.dart';

import '../../../../../core/route_config/route_names.dart';
import '../../../../../core/utls/utls.dart';
import '../widgets/password_requirements.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {}),
      ),
      body: SafeArea(child: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
             Text("Create a strong password",style: textTheme.bodyMedium, ),
            const SizedBox(height: 24,),
            PasswordInputField(label: 'Password',horizontalPadding: 12,),
            const SizedBox(height: 12,),
            PasswordInputField(label: 'Confirm Password',horizontalPadding: 12,),
            const SizedBox(height: 24,),
            Text("Password should contain: ",style: textTheme.bodyMedium, ),
            const SizedBox(height: 12,),
            PasswordRequirements(),
            const Spacer(),
            Utils.primaryButton(title: "Continue", onPressed: () {
              Navigator.pushNamed(context, RouteNames.phoneVerificationScreen);
            }),
            const SizedBox(height: 80,),
          ],
        ),
      )),
    );
  }
}
