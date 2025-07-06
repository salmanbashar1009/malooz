import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class BuildHorizontalList extends StatelessWidget {
  const BuildHorizontalList({
    super.key,
     this.title,
    this.width,
    this.height,
    this.borderRadius,
    required this.itemCount,
    required this.imagePath,
    this.shape,
    this.listHeight
  });

  final String? title;
  final double? width;
  final double? height;
  final double? borderRadius;
  final int itemCount;
  final String imagePath;
  final BoxShape? shape;
  final double? listHeight;


  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: listHeight ?? 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(right: index == 9 ? 16 : 4, left: index == 0 ? 16 : 4),
            child: Column(
              children: [
                Container(
                  width: height ?? 110,
                  height: width ?? 75,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imagePath)),
                      borderRadius: shape != null ? null : BorderRadius.circular(borderRadius ?? 0),
                      shape: shape ?? BoxShape.rectangle
                  ),
                ),
                const SizedBox(height: 6,),
                Text(title ?? '',style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.white
                ),)
              ],
            ),
          );
        },
      ),
    );
  }
}
