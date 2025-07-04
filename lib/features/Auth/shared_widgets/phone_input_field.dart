import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/utls/utls.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key,  this.phoneController});

   final TextEditingController? phoneController;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return IntlPhoneField(
      controller: phoneController,
      flagsButtonMargin: const EdgeInsets.only(left: 10,),
      keyboardType: TextInputType.phone,
      cursorColor: AppColors.whiteGrey,
      dropdownIconPosition: IconPosition.trailing,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white5,
        hintText: "Enter Phone",
        hintStyle: textTheme.bodyMedium,
        contentPadding: const EdgeInsets.only(top: 18),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.primaryColor
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: AppColors.white6
          ),
        ),
      ),
      initialCountryCode: 'BD',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}
