import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';
import 'package:malooz/features/common/common_widgets/section_header.dart';

import '../widgets/channel_follow_section.dart';
import '../widgets/live_video_card.dart';
import '../widgets/video_player.dart';

class LivePlayScreen extends StatelessWidget {
  const LivePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.horizontal16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: 175,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     image: const DecorationImage(
                  //       image: AssetImage(AppImages.live),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  BetterVideoPlayer(
                    videoUrl: "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4", // or MP4
                    isLive: false, // false for movies or highlights
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Video Name of Title text  Here Input ',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '10,000 Watching Now, more.....',
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: AppColors.white70,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ChannelFollowSection(),
                  const SizedBox(height: 30,),
                ],
              ),
            ),

            /// live chat section
            Padding(
              padding: AppPadding.horizontal16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Live Chat',style:textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.white,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ), ),
                  const SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Icon(Icons.account_circle,size: 40,color: AppColors.grey,),
                      Container(
                        height: 36,
                        width: MediaQuery.of(context).size.width - 80,
                        padding: AppPadding.padding(horizontal: 16,vertical: 8),
                        decoration: BoxDecoration(
                            color: AppColors.white5,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.white6)
                        ),
                        child: Text('Comment here',style: textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.white30,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  SectionHeader(title: 'Live Now',seeMore: true,),
                  const SizedBox(height: 14,),
                ],
              ),
            ),
            Utils.buildList(itemCount: 10, widget:(index) => LiveVideoCard(index: index,onTap: (){
              // Navigator.pushNamed(context, RouteNames.livePlayScreen);
            },),height: 230),

          ],
        ),
      ),
    );
  }
}

