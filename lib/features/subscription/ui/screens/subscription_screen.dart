import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/subscription/ui/widgets/montly_subscription.dart';
import 'package:malooz/features/subscription/ui/widgets/premium_intro_section.dart';
import 'package:malooz/features/subscription/ui/widgets/weeklly_subscription.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/route_config/route_names.dart';
import '../../../../core/utls/utls.dart';
import '../../bloc/subscription_bloc.dart';
import '../widgets/daily_subsciption.dart';
import '../widgets/yearly_subscription.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return BlocProvider(
      create: (context) => SubscriptionBloc(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.cancel_outlined,
                size: 20,
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text('Help?',
                    style: textTheme.copyWith(
                      fontWeight: FontWeight.w600,
                    )))
          ],
        ),
        body: Scaffold(
          body: Padding(
            padding: AppPadding.horizontal16,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25,),
                  PremiumIntroSection(),
                  const SizedBox(height: 33,),
                  DailySubscription(),
                  const SizedBox(height: 32,),
                  WeekllySubscription(),
                  const SizedBox(height: 32,),
                  MonthlySubscription(),
                  const SizedBox(height: 32,),
                  YearlySubscription(),
                  const SizedBox(height: 61,),
                  Utils.primaryButton(title: 'Continue', onPressed: (){
                    Navigator.pushNamed(context, RouteNames.paymentDetailsScreen);
                  }),
                  const SizedBox(height: 32,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

