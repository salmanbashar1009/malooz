import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';
import 'package:malooz/features/common_widgets/build_horizontal_list.dart';
import 'package:malooz/features/common_widgets/section_header.dart';
import '../../../../core/constant/app_images.dart';
import '../widgets/action_button_row.dart';
import '../widgets/images_section.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSection(),
         Padding(
           padding: AppPadding.horizontal16,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const SizedBox(height: 24,),
               Text("Drama, mystery & thriller",style: textTheme.bodySmall,),
               const SizedBox(height: 18,),
               RichText(text:
               TextSpan(
                   style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                   children: <TextSpan>[
                     TextSpan(
                         text: "Genre: ",
                         style: textTheme.bodyMedium?.copyWith(color: AppColors.white,)
                     ),
                     TextSpan(
                       text: "Mysterious-Action-Thriller",
                     ),
                   ]
               )),
               const SizedBox(height: 16,),
               Text("a film by Adrian which tells the story of a man who is approached by a woman in his dream who says that he is his life guide",style: textTheme.bodySmall,),
               const SizedBox(height: 20,),
               Row(
                 children: [
                   GestureDetector(
                     onTap: (){},
                     child: Text("Watch Thriller",style: textTheme.bodyMedium?.copyWith(
                         fontWeight: FontWeight.w700,
                         color: AppColors.blue
                     ),),
                   ),
                   const SizedBox(width: 20,),
                   GestureDetector(
                     onTap: (){},
                     child: Text("Other Videos",style: textTheme.bodyMedium?.copyWith(
                         fontWeight: FontWeight.w700,
                         color: AppColors.blue
                     ),),
                   ),
                 ],
               ),
               const SizedBox(height: 32,),
               Utils.primaryButton(title: "Purchase Now", onPressed: (){}),
               const SizedBox(height: 36,),
               ActionButtonsRow(),
               const SizedBox(height: 36,),
               Wrap(
                 children: [RichText(
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     text:
                 TextSpan(
                     style: textTheme.bodySmall,
                     children: <TextSpan>[
                       TextSpan(
                           text: "Cast: ",
                           style: textTheme.bodySmall?.copyWith(color: AppColors.white,fontWeight: FontWeight.w600)
                       ),
                       TextSpan(
                         text: "Rafael Gusikowski, Stella Spencer, Maurice Cruickshank II, Christie Mertz, Janis Kuhlman ashdfja asdfhaskdjf asdkfhasd  asdfhaksdjf asdfkhjasdfkj asdhfkajsdf asdkjhasfd kjasdfh  ",

                       ),
                     ]
                 )),
                   Text(
                        "...See More",
                       style: textTheme.bodySmall?.copyWith(color: AppColors.blue,fontWeight: FontWeight.w600)
                   ),
                 ],
               ),
             ],
           ),
         ),
          const SizedBox(height: 36,),
          SectionHeader(title: "For you"),
          const SizedBox(height: 24,),
          BuildHorizontalList(itemCount: 10, imagePath: AppImages.movie,height: 125,width: 100,listHeight: 160,hasRating: true,),
          const SizedBox(height: 20,),

      
        ],
      ),
    );
  }
}

