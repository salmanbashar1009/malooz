import 'package:flutter/material.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/utls/utls.dart';
import '../widgets/blur_container.dart';
import '../widgets/gradient_section.dart';
import '../widgets/header_section.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        /// Background image
        Image.asset(
          AppImages.onboardingBg,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),

        /// Gradient container
        GradientSection(),

        /// Header section
        HeaderSection(),

        /// App Logo
        Positioned(
          top: MediaQuery.of(context).size.height * 0.36,
          left: 0,
          right: 0,
          child: Utils.AppLogo()
        ),

        /// blur container
        BlurContainer(),
      ],
    );
  }
}

