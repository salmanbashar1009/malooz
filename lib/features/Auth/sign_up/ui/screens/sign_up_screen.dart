import 'package:flutter/material.dart';
import '../../../../../core/constant/app_padding.dart';
import '../../../../../core/route_config/route_names.dart';
import '../../../../../core/utls/utls.dart';
import '../../../shared_widgets/divider_section.dart';
import '../../../shared_widgets/phone_input_field.dart';
import '../../../login/ui/widgets/remember_forget_password_section.dart';
import '../../../shared_widgets/social_icons_section.dart';
import '../../../shared_widgets/text_input_field.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    Navigator.pushNamed(context, RouteNames.loginScreen);
                  },
                  child: Text(
                    "Login",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28,),
              Utils.AppLogo(width: 180),
              const SizedBox(height: 34,),
              Text("Create A New Account", style: textTheme.titleMedium),
              const SizedBox(height: 8,),
              Text("Enter following details to signup.",
                  style: textTheme.bodySmall),
              const SizedBox(height: 14,),
             TextInputField(label: "Name", icon: Icons.person),
              const SizedBox(height: 12,),
              TextInputField(label: "Email", icon: Icons.mail),
              const SizedBox(height: 12,),
              PhoneInputField(),
              const SizedBox(height: 16,),
              RememberForgetPasswordSection(),
              const SizedBox(
                height: 50,
              ),
              Utils.primaryButton(title: "Sign up", onPressed: () {
                Navigator.pushNamed(context, RouteNames.createPasswordScreen);
              }),
              const SizedBox(
                height: 65,
              ),
              DividerSection(title: "Signup with"),
              const SizedBox(height: 20,),
              SocialIconSection()

            ],
          ),
        ),
      ),
    );
  }
}






