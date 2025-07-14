import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_icons.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';

class ReferralLinkScreen extends StatelessWidget {
  const ReferralLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.white
    );
    return Scaffold(
      appBar: Utils.appBar(context: context,title: 'Share your Referral link',isTitleCenter: false),
      body: Padding(
        padding:AppPadding.horizontal16,
        child: Column(
          children: [
            const SizedBox(height: 50,),
            // Steps
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 24,
              childAspectRatio: 1.4,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildStep(
                  step: 'STEP 1',
                  description: 'Please Copy The Referral Url And Start Earning.',
                  iconPath: AppIcons.link,
                ),
                _buildStep(
                  step: 'STEP 2',
                  description: 'Share The Referral Link With Friends Via Email Or Social Media',
                  iconPath: AppIcons.referralShare,
                ),
                _buildStep(
                  step: 'STEP 3',
                  description: 'When Your Friends Click On Your Link And Pledge.',
                  iconPath: AppIcons.badge,
                ),
                _buildStep(
                  step: 'STEP 4',
                  description: 'We Will Notify You To Your Prize. When Ended If You Are Eligible.',
                  iconPath: AppIcons.gitBox,
                ),
              ],
            ),
            const Spacer(),
             Text(
               'Your Referral Invited Link Is Here',
               style: textTheme.copyWith(
                 fontSize: 14,
                 color: AppColors.white
               ),
             ),
            const SizedBox(height: 49),
            Container(
              width: double.infinity,
              padding: AppPadding.padding16,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'www.malooz.com/Your referral invited link',
                textAlign: TextAlign.center,
                style: textTheme.copyWith(color: AppColors.white50),
              ),
            ),
            const SizedBox(height: 56),
            Utils.primaryButton(title: 'Copy Link', onPressed: (){}),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }

  Widget _buildStep({
    required String step,
    required String description,
    required String iconPath,
  }) {

    final textTheme = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppColors.white
    );

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 103,
              height: 27,
              alignment: Alignment.centerLeft,
              padding: AppPadding.horizontal16,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Text(
                step,
                style: textTheme,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(iconPath,width: 32,height: 32,),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: textTheme.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
