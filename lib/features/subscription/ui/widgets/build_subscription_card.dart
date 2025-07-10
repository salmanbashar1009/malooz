import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_padding.dart';

class BuildSubscriptionCard extends StatelessWidget {
  const BuildSubscriptionCard({super.key, required this.title, required this.description, this.onTap, this.children});

  final String title;
  final String description;
  final VoidCallback? onTap;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white,
    );
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: AppPadding.padding(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF282A2C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      style: textTheme.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: title
                        ),
                        TextSpan(
                          text: description,
                          style: textTheme.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]
                  ),
                ),
                Icon(Icons.circle,size: 18,color: AppColors.white18,)
              ],
            ),
          ),
        ),
        Container(
          padding: AppPadding.padding(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: Color(0xFF131517),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children!,
          ),
        ),
      ],
    );
  }
}
