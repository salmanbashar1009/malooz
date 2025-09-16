import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:malooz/core/constant/app_images.dart';
import 'package:malooz/features/onboarding/ui/screens/onboarding_screen.dart';

void main() {
  testWidgets("OnboardingScrenn shows onboarding background image", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OnboardingScreen(),
        )
      )
    );

    /// Find the background image by its asset name
    final bgImageFinder = find.byWidgetPredicate(
        (widget) => widget is Image &&
        widget.image is AssetImage && (widget.image as AssetImage).assetName == AppImages.onboardingBg
    );

    expect(bgImageFinder, findsOneWidget);

  });
}