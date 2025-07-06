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
    this.listHeight,
    this.hasRating = false,
    this.rating
  });

  final String? title;
  final double? width;
  final double? height;
  final double? borderRadius;
  final int itemCount;
  final String imagePath;
  final BoxShape? shape;
  final double? listHeight;
  final bool? hasRating;
  final double? rating;


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
            padding:  EdgeInsets.only(right: index == 9 ? 16 : 5, left: index == 0 ? 16 : 5),
            child: Column(
              children: [
                Stack(
                  children: [Container(
                    width: width ?? 110,
                    height: height ?? 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
                        borderRadius: shape != null ? null : BorderRadius.circular(borderRadius ?? 0),
                        shape: shape ?? BoxShape.rectangle
                    ),
                  ),
                  hasRating == true ?  Positioned(
                      top: 4,
                      left: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          color: AppColors.white6.withAlpha(50),
                        ),
                        child: Wrap(
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: 14,),
                            const SizedBox(width: 5,),
                            Text('4.5',style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.white
                            ),)
                          ],
                        ),
                      ),
                    ) : SizedBox.shrink()
                  ],
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
