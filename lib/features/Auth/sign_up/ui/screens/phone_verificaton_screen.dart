import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/features/Auth/shared_widgets/phone_input_field.dart';

import '../../../../../core/utls/utls.dart';

class PhoneVerificatonScreen extends StatelessWidget {
  const PhoneVerificatonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {}),
      ),
      body: SafeArea(child: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24,),
            Text("Phone Verification", style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700
            ),),
            const SizedBox(height: 8,),
            Text('Please confirm your country code and enter your \nphone number for verification',style: textTheme.bodySmall,),
            const SizedBox(height: 24,),
            PhoneInputField(),
            const Spacer(),
            Utils.primaryButton(title: 'Continue', onPressed: (){
              Navigator.pushNamed(context, RouteNames.otpVerificationScreen);
            }),
            const SizedBox(height: 120,)

          ],
        ),
      ))
    );
  }
}
