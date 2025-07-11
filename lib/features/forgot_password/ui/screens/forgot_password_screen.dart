import 'package:flutter/material.dart';
import 'package:malooz/core/utls/utls.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.appBar(context: context,title: "Forgot Password",isTitleCenter: false),
    );
  }
}
