import 'package:flutter/cupertino.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/create_password_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/otp_verification_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/phone_verificaton_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/sign_up_screen.dart';
import '../../features/Auth/interest_screen/ui/screens/interest_screen.dart';
import '../../features/Auth/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';

class AppRoutes{
 static Map<String, WidgetBuilder> routes = {
   RouteNames.onboardingScreen: (context) => const OnboardingScreen(),
   RouteNames.loginScreen: (context) => const LoginScreen(),
   RouteNames.signUpScreen: (context) => const SignUpScreen(),
   RouteNames.createPasswordScreen: (context) => const CreatePasswordScreen(),
   RouteNames.phoneVerificationScreen: (context) => const PhoneVerificatonScreen(),
   RouteNames.otpVerificationScreen: (context) => const OtpVerificationScreen(),
   RouteNames.interestScreen: (context) =>  InterestScreen(),
 };
}