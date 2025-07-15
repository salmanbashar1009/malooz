import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/core/constant/app_images.dart';
import 'package:malooz/features/common/common_widgets/section_header.dart';
import '../../../common/common_bloc/search_bloc/search_bloc.dart';
import '../../../common/common_bloc/search_bloc/search_event.dart';
import '../../../common/common_bloc/search_bloc/search_state.dart';
import '../../../common/common_widgets/build_horizontal_list.dart';
import '../widgets/home_screen_banner.dart';
import '../widgets/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;


    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context,state) {
        return Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            /// Home screen header section : search bar and profile icon
            HomeScreenHeader(),
            const SizedBox(height: 12,),
            /// Show filtered list on focus or query change
            if (state.showList)
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: state.filteredData.entries.map((entry) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry.key,
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        ...entry.value.map((item) => ListTile(
                          title: Text(item),
                        )),
                        const SizedBox(height: 16),
                      ],
                    );
                  }).toList(),
                ),
              )
            else
            /// Default content (when not focused)
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// Banner section
                      HomeScreenBanner(textTheme: textTheme),
                      const SizedBox(height: 12),
                      SectionHeader(title: "Special Events"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.event,
                      ),
                      const SizedBox(height: 35),
                      SectionHeader(title: "Sports Channel"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        listHeight: 80,
                        itemCount: 10,
                        imagePath: AppImages.channel,
                        shape: BoxShape.circle,
                        width: 55,
                        height: 55,
                      ),
                      const SizedBox(height: 12),
                      SectionHeader(title: "Movie Channel"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        listHeight: 80,
                        itemCount: 10,
                        imagePath: AppImages.channel,
                        shape: BoxShape.circle,
                        width: 55,
                        height: 55,
                      ),
                      const SizedBox(height: 12),
                      SectionHeader(title: "Entertainment Channel"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        listHeight: 80,
                        itemCount: 10,
                        imagePath: AppImages.channel,
                        shape: BoxShape.circle,
                        width: 55,
                        height: 55,
                      ),
                      const SizedBox(height: 24),
                      SectionHeader(title: "New & Popular"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.event,
                      ),
                      const SizedBox(height: 24),
                      SectionHeader(title: "Movies"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        hasRating: true,
                        listHeight: 160,
                        borderRadius: 10,
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.movie,
                        height: 125,
                        width: 100,
                      ),
                      const SizedBox(height: 20),
                      SectionHeader(title: "Series"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        hasRating: true,
                        listHeight: 160,
                        borderRadius: 10,
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.movie,
                        height: 125,
                        width: 100,
                      ),
                      const SizedBox(height: 20),
                      SectionHeader(title: "Sports"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        hasRating: true,
                        listHeight: 160,
                        borderRadius: 10,
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.movie,
                        height: 125,
                        width: 100,
                      ),
                      const SizedBox(height: 24),
                      SectionHeader(title: "Match Highlights"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.event,
                      ),
                      const SizedBox(height: 24),
                      SectionHeader(title: "Documents"),
                      const SizedBox(height: 12),
                      BuildHorizontalList(
                        hasRating: true,
                        listHeight: 160,
                        borderRadius: 10,
                        title: 'Card Title',
                        itemCount: 10,
                        imagePath: AppImages.movie,
                        height: 125,
                        width: 100,
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
          ],
        );
      }
    );
  }
}


