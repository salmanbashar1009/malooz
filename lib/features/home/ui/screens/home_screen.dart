import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_images.dart';
import 'package:malooz/features/common_widgets/section_header.dart';
import '../../../common_widgets/build_horizontal_list.dart';
import '../widgets/home_screen_banner.dart';
import '../widgets/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;

    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        /// Home screen header section : search bar and profile icon
        HomeScreenHeader(textTheme: textTheme),
        const SizedBox(height: 12,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Home screen banner section : get started button , text and banner image
                HomeScreenBanner(textTheme: textTheme),
                const SizedBox(height: 12,),
                /// Special Events section : title and list of events
                SectionHeader(title: "Special Events"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.event,),
                const SizedBox(height: 35,),
                /// Sports channel section : title and list of channels
                SectionHeader(title: "Sports Channel"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  listHeight: 80,
                    itemCount: 10,
                    imagePath: AppImages.channel,
                    shape: BoxShape.circle,
                    width: 55,
                    height: 55 ,),
                const SizedBox(height: 12,),
                /// Movie channel section : title and list of channels
                SectionHeader(title: "Movie Channel"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  listHeight: 80,
                  itemCount: 10,
                  imagePath: AppImages.channel,
                  shape: BoxShape.circle,
                  width: 55,
                  height: 55 ,),
                const SizedBox(height: 12,),
                /// Entertainment channel section : title and list of channels
                SectionHeader(title: "Entertainment Channel"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  listHeight: 80,
                  itemCount: 10,
                  imagePath: AppImages.channel,
                  shape: BoxShape.circle,
                  width: 55,
                  height: 55 ,),
                /// New & Popular section : title and list of images
                const SizedBox(height: 24,),
                SectionHeader(title: "New & Popular"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.event,),

                /// Movies section : title and list of images
                const SizedBox(height: 24,),
                SectionHeader(title: "Movies"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  hasRating: true,
                  listHeight: 160,
                  borderRadius: 10,
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.movie,height: 125,width: 100,),

                /// Series section : title and list of images
                const SizedBox(height: 20,),
                SectionHeader(title: "Series"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  hasRating: true,
                  listHeight: 160,
                  borderRadius: 10,
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.movie,height: 125,width: 100,),

                /// Sports section : title and list of images
                const SizedBox(height: 20,),
                SectionHeader(title: "Sports"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  hasRating: true,
                  listHeight: 160,
                  borderRadius: 10,
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.movie,height: 125,width: 100,),
                const SizedBox(height: 24,),

                /// Match Highlights section : title and list of images
                SectionHeader(title: "Match Highlights"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.event,),

                /// Documents section : title and list of images
                const SizedBox(height: 24,),
                SectionHeader(title: "Documents"),
                const SizedBox(height: 12,),
                BuildHorizontalList(
                  hasRating: true,
                  listHeight: 160,
                  borderRadius: 10,
                  title: 'Card Title', itemCount: 10, imagePath: AppImages.movie,height: 125,width: 100,),
                const SizedBox(height: 24,),


              ],
            ),
          ),
        ),
      ],
    );
  }
}


