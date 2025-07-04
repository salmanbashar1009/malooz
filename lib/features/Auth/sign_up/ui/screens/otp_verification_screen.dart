import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/Auth/shared_widgets/phone_input_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../core/utls/utls.dart';
import '../widgets/otp_input_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Utils.backButton(onTap: () {
            Navigator.pop(context);
          }),
        ),
        body: SafeArea(child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24,),
              Text("OTP Verification", style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700
              ),),
              const SizedBox(height: 8,),
              RichText(text: TextSpan(
                style: textTheme.bodySmall,
                children: <TextSpan>[
                  TextSpan(
                    text: "Enter the OTP sent to ",
                  ),
                  TextSpan(
                    text: "+01922700031",
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.white
                    )
                  ),
                ]
              )),
              const SizedBox(height: 24,),
              OtpInputField(),
              const SizedBox(height: 52,),
              Utils.primaryButton(title: 'Continue', onPressed: (){}),
              const SizedBox(height: 65,),
              Align(
                  alignment: Alignment.center,
                  child: Text("Did not get the OTP?",style: textTheme.bodyMedium,)),
            const SizedBox(height: 8,),
              Align(
                  alignment: Alignment.center,
                  child: Text("00:30",style: textTheme.bodyMedium,)),

            ],
          ),
        ))
    );
  }
}
