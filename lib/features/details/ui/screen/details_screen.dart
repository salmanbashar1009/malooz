import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/utls/utls.dart';
import '../widgets/images_section.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageSection(),
        const SizedBox(height: 24,),
        Padding(
          padding: AppPadding.horizontal16,
          child: Text("Drama, mystery & thriller",style: textTheme.bodySmall,),
        )
      ],
    );
  }
}

