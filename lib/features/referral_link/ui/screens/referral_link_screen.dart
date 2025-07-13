import 'package:flutter/material.dart';
import 'package:malooz/core/utls/utls.dart';

class ReferralLinkScreen extends StatelessWidget {
  const ReferralLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.appBar(context: context,title: 'Share your Referral link',isTitleCenter: false),
    );
  }
}
