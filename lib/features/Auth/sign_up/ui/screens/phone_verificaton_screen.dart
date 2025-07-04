import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../../core/utls/utls.dart';

class PhoneVerificatonScreen extends StatelessWidget {
  const PhoneVerificatonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {}),
      ),
      body: SafeArea(child: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          children: [
            const SizedBox(height: 24,),
            Text("Phone Verification", style: textTheme.headlineSmall,)
          ],
        ),
      ))
    );
  }
}
