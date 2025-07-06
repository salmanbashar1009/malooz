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

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          HomeScreenHeader(textTheme: textTheme),
          const SizedBox(
            height: 12,
          ),
          HomeScreenBanner(textTheme: textTheme),
          const SizedBox(height: 12,),
          SectionHeader(title: "Special Events"),
          const SizedBox(height: 12,),
          BuildHorizontalList(
            title: 'Card Title', itemCount: 10, imagePath: AppImages.event,),
          const SizedBox(height: 35,),
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
          SectionHeader(title: "Entertainment Channel"),
          const SizedBox(height: 12,),
          BuildHorizontalList(
            listHeight: 80,
            itemCount: 10,
            imagePath: AppImages.channel,
            shape: BoxShape.circle,
            width: 55,
            height: 55 ,),
      
        ],
      ),
    );
  }
}


