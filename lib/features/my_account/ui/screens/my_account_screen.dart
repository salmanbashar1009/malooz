import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_icons.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/features/my_account/ui/widgets/get_premium_tile.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/utls/utls.dart';
import '../widgets/profile_avatar.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {
          Navigator.pop(context);
        }),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileAvatar(),

              const SizedBox(
                height: 45,
              ),
              GetPremiumTile(onTap: () {}),
              const SizedBox(
                height: 34,
              ),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.person,
                  title: "Edit Account",
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.editAccountScreen);
                  }),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.download,
                  title: "Download",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.history,
                  title: "History",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.language,
                  title: "Language",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.privacy,
                  title: "Privacy Policy",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.contact,
                  title: "Contact us",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.security,
                  title: "Security",
                  onTap: () {}),
              Utils.buildTileItem(
                  context: context,
                  iconPath: AppIcons.faq,
                  title: "FAQ",
                  onTap: () {}),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 3,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      AppIcons.logout,
                      width: 18,
                      height: 18,
                    ),
                    Text(
                      "Logout",
                      style:
                          textTheme.bodySmall?.copyWith(color: AppColors.red),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
