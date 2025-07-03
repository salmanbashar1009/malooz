import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:malooz/features/Auth/login/ui/widgets/check_box_item.dart';
import 'package:malooz/features/Auth/login/ui/widgets/phone_number_picker.dart';

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
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Signup",
                  style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Utils.AppLogo(width: 180),
              const SizedBox(
                height: 34,
              ),
              Text("Login", style: textTheme.titleMedium),
              const SizedBox(
                height: 8,
              ),
              Text("Enter following details to login.",
                  style: textTheme.bodySmall),
              const SizedBox(
                height: 14,
              ),
              Utils.customTile(
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CheckBoxItem(
                          title: "Phone Number", isChecked: true, onTap: () {}),
                      CheckBoxItem(
                          title: "Email Address",
                          isChecked: false,
                          onTap: () {}),
                    ],
                  )),
              const SizedBox(
                height: 12,
              ),
              // Utils.customTile(
              //     height: 56,
              //     child: IntlPhoneField(
              //       decoration: InputDecoration(
              //         labelText: 'Phone Number',
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide(),
              //         ),
              //       ),
              //       initialCountryCode: 'IN',
              //       onChanged: (phone) {
              //         print(phone.completeNumber);
              //       },
              //     )),
              Utils.customTile(child: PhoneNumberPicker()),
              const SizedBox(
                height: 12,
              ),
              Utils.customTile(
                  child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Password"),
                    labelStyle: textTheme.bodyMedium,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.whiteGrey,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: AppColors.whiteGrey,
                      size: 18,
                    )),
              )),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("Remember me",
                      style: textTheme.bodySmall?.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Text("Forgot Password?",
                      style: textTheme.bodySmall?.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Utils.primaryButton(title: "Login", onPressed: () {}),
              const SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.white10,
                      thickness: 1,
                      indent: 20,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'Login with',
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.whiteGrey,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.white10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
