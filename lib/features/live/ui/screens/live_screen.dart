import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/common/common_widgets/app_search_bar.dart';
import 'package:malooz/features/common/common_widgets/section_header.dart';
import 'package:malooz/features/live/ui/widgets/video_card.dart';
import '../../../../core/utls/utls.dart';
import '../widgets/live_video_card.dart';

class LiveScreen extends StatelessWidget {
   const LiveScreen({super.key,});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: (){}),
        title: const Text("Live Premier league"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.horizontal16,
              child: AppSearchBar(),
            ),
            const SizedBox(height: 27,),
            Padding(
              padding: AppPadding.horizontal16,
              child: SectionHeader(title: "Live Now",seeMore: true,),
            ),
            const SizedBox(height: 22,),
            Utils.buildList(itemCount: 10, widget:(index) => LiveVideoCard(index: index,),height: 230),
            const SizedBox(height: 28,),
            Padding(
              padding: AppPadding.horizontal16,
              child: SectionHeader(title: "Highlights",),
            ),
            const SizedBox(height: 17,),
            Utils.buildList(itemCount: 10, widget:(index) => VideoCard(),height: 135),
            const SizedBox(height: 17,),
            Padding(
              padding: AppPadding.horizontal16,
              child: SectionHeader(title: "Replays",),
            ),
            const SizedBox(height: 17,),
            Utils.buildList(itemCount: 10, widget:(index) => VideoCard(),height: 135),
            const SizedBox(height: 28,),
        
          ],
        ),
      ),
    );
  }
}
