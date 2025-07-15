import 'package:flutter/cupertino.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/create_password_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/otp_verification_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/phone_verificaton_screen.dart';
import 'package:malooz/features/Auth/sign_up/ui/screens/sign_up_screen.dart';
import 'package:malooz/features/contact_support/ui/screens/contact_support_screen.dart';
import 'package:malooz/features/details/ui/screen/details_screen.dart';
import 'package:malooz/features/download/ui/screens/download_screen.dart';
import 'package:malooz/features/faq/ui/screens/faq_screen.dart';
import 'package:malooz/features/favourite/ui/screens/favourite_list_screen.dart';
import 'package:malooz/features/feedback/ui/screens/feedback_screen.dart';
import 'package:malooz/features/home/ui/screens/home_screen.dart';
import 'package:malooz/features/live/ui/screens/live_play_screen.dart';
import 'package:malooz/features/my_account/ui/screens/edit_account_screen.dart';
import 'package:malooz/features/my_account/ui/screens/my_account_screen.dart';
import 'package:malooz/features/notifications/ui/screens/notifications_screen.dart';
import 'package:malooz/features/payment_details/ui/screens/payment_details_screen.dart';
import 'package:malooz/features/referral_link/ui/screens/referral_link_screen.dart';
import 'package:malooz/features/subscription/ui/screens/subscription_screen.dart';
import 'package:malooz/features/terms_&_conditions/ui/screens/terms_conditions_screen.dart';
import 'package:malooz/features/watch_history/ui/screens/watch_history_screen.dart';
import '../../features/Auth/forgot_password/ui/screens/forgot_password_otp_screen.dart';
import '../../features/Auth/forgot_password/ui/screens/forgot_password_screen.dart';
import '../../features/Auth/interest_screen/ui/screens/interest_screen.dart';
import '../../features/Auth/login/ui/screens/login_screen.dart';
import '../../features/Auth/reset_password/ui/screens/reset_password_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/parent/ui/screens/parent_screen.dart';
import '../../features/settings/ui/screens/settings_screen.dart';

class AppRoutes{
 static Map<String, WidgetBuilder> routes = {
   RouteNames.onboardingScreen: (context) => const OnboardingScreen(),
   RouteNames.parentScreen: (context) => const ParentScreen(),
   RouteNames.loginScreen: (context) => const LoginScreen(),
   RouteNames.signUpScreen: (context) => const SignUpScreen(),
   RouteNames.createPasswordScreen: (context) => const CreatePasswordScreen(),
   RouteNames.phoneVerificationScreen: (context) => const PhoneVerificatonScreen(),
   RouteNames.otpVerificationScreen: (context) => const OtpVerificationScreen(),
   RouteNames.interestScreen: (context) =>  InterestScreen(),
   RouteNames.homeScreen: (context) =>  HomeScreen(),
   RouteNames.detailsScreen: (context) => const DetailsScreen(),
   RouteNames.settingsScreen: (context) => const SettingsScreen(),
   RouteNames.myAccountScreen: (context) => const MyAccountScreen(),
   RouteNames.editAccountScreen: (context) => const EditAccountScreen(),
   RouteNames.notificationsScreen: (context) => const NotificationsScreen(),
   RouteNames.subscriptionScreen: (context) => const SubscriptionScreen(),
   RouteNames.paymentDetailsScreen: (context) => const PaymentDetailsScreen(),
   RouteNames.termsConditionsScreen: (context) => const TermsConditionsScreen(),
   RouteNames.forgotPasswordOtpScreen: (context) => const ForgotPasswordOtpScreen(),
   RouteNames.forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
   RouteNames.resetPasswordScreen: (context) => const ResetPasswordScreen(),
   RouteNames.contactSupportScreen: (context) => const ContactSupportScreen(),
   RouteNames.feedbackScreen: (context) => const FeedbackScreen(),
   RouteNames.faqScreen: (context) =>  FAQScreen(),
   RouteNames.referralLinkScreen: (context) => const  ReferralLinkScreen(),
   RouteNames.downloadScreen: (context) => const  DownloadScreen(),
   RouteNames.favouriteListScreen: (context) => const  FavouriteListScreen(),
   RouteNames.watchHistoryScreen: (context) => const  WatchHistoryScreen(),
   RouteNames.livePlayScreen: (context) => const  LivePlayScreen(),
 };
}