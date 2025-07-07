import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_images.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/common_widgets/app_search_bar.dart';
import 'package:malooz/features/common_widgets/build_horizontal_list.dart';
import 'package:malooz/features/common_widgets/section_header.dart';

import '../../../../core/utls/utls.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: (){}),
        title: const Text("Live Premier league"),
      ),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          children: [
            AppSearchBar(),
            const SizedBox(height: 27,),
            SectionHeader(title: "Live Now",seeMore: true,),
            const SizedBox(height: 28,),
            SectionHeader(title: "Highlights",),
            const SizedBox(height: 17,),

          ],
        ),
      ),
    );
  }
}
