import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_icons.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/my_account/ui/widgets/get_premium_tile.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/utls/utls.dart';
import '../widgets/profile_avatar.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: (){
          Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileAvatar(),
            const SizedBox(height: 4,),
            Text("H Bashar",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.white
            ),
            ),
            Text('@hbashar123',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.white50
            ),),
            const SizedBox(height: 45,),
           GetPremiumTile(onTap: (){}),
            const SizedBox(height: 34,),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Download", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),
            Utils.buildTileItem(context: context, iconPath: AppIcons.person, title: "Edit Account", onTap: (){}),

          ],
        ),
      ),
    );
  }
}

