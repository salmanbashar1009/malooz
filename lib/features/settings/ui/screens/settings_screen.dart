import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';

import '../../../../core/constant/app_icons.dart';
import '../../../../core/route_config/route_names.dart';
import '../../../../core/utls/utls.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Settings',
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 20),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.person,
              title: 'Account Settings',
              onTap: () {
                Navigator.pushNamed(context, RouteNames.myAccountScreen);
              }),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.notifications,
              title: 'Notifications',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.themeMode,
              title: 'Dark Mood',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.subscription,
              title: 'Subscription Management',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.payment,
              title: 'Payment Management',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.star,
              title: 'Rate the App',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.affiliateProgram,
              title: 'Affiliate Program',
              onTap: () {}),
          Utils.buildTileItem(
              context: context,
              iconPath: AppIcons.share,
              title: 'Share App',
              onTap: () {}),
          const SizedBox(height: 110),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Delete Account',
              style: textTheme.bodySmall
                  ?.copyWith(fontWeight: FontWeight.w500, color: AppColors.red),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }


}
