import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/utls/utls.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Positioned(
      left: 0,
      right: 0,
      bottom: 30,
      child: Padding(
        padding: AppPadding.padding(horizontal: 16, vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
                height: 300,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.white.withAlpha(5),
                  // semi-transparent glass color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To",
                      style: textTheme.titleLarge?.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.w500),
                    ),
                    Text("Malooz Television",
                        style: textTheme.headlineLarge?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 36)),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        '''Malooz TV is the best streaming experience for watching your favorite movies, and shows on demand at anytime, anywhere. With Malooz TV, you can enjoy a wide variety of content.''',
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.white40,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Utils.primaryButton(
                        title: "Login",
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/loginScreen');
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    Text("New here?",
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.white.withAlpha(200),
                        ))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
