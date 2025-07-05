import 'package:flutter/material.dart';
import 'package:malooz/features/Auth/login/ui/widgets/check_box_item.dart';
import 'package:malooz/features/Auth/shared_widgets/password_input_field.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_padding.dart';
import '../../../../../core/route_config/route_names.dart';
import '../../../../../core/utls/utls.dart';
import '../../../shared_widgets/divider_section.dart';
import '../../../shared_widgets/phone_input_field.dart';
import '../../../shared_widgets/social_icons_section.dart';
import '../widgets/remember_forget_password_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteNames.signUpScreen);
                  },
                  child: Text(
                    "Signup",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28,),
              Utils.AppLogo(width: 180),
              const SizedBox(height: 34,),
              Text("Login", style: textTheme.titleMedium),
              const SizedBox(height: 8,),
              Text("Enter following details to login.",
                  style: textTheme.bodySmall),
              const SizedBox(height: 14,),
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
              const SizedBox(height: 12,),
              PhoneInputField(),
              const SizedBox(
                height: 12,
              ),
              PasswordInputField(label: "Password", icon: Icon(Icons.lock,color: AppColors.grey,)),
              const SizedBox(
                height: 16,
              ),
              RememberForgetPasswordSection(),
              const SizedBox(
                height: 50,
              ),
              Utils.primaryButton(title: "Login", onPressed: () {
                Navigator.pushReplacementNamed(context, RouteNames.parentScreen);
              }),
              const SizedBox(
                height: 65,
              ),
              DividerSection(title: "Login with"),
              const SizedBox(height: 20,),
              SocialIconSection()

            ],
          ),
        ),
      ),
    );
  }
}




