import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({super.key, this.otpController});
  
  final TextEditingController? otpController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 5,
      textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: AppColors.black
      ),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      obscureText: false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        selectedFillColor: AppColors.primaryColor,
        selectedColor: AppColors.primaryColor,
        inactiveFillColor: AppColors.white5,
        inactiveColor: AppColors.white6,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 50,
        fieldWidth: 50,
        activeFillColor: AppColors.primaryColor,
        activeColor: AppColors.primaryColor,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      controller: otpController,
      appContext: context,
    );
  }
}
