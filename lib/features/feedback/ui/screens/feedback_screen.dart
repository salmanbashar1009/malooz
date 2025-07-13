import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';

import '../../../../core/constant/app_colors.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.appBar(context: context, title: "Feedback"),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 56,
              ),
              buildContainer(
                  context: context,
                  label: 'Name here',
                  prefixIcon:
                  Icon(Icons.person, size: 20, color: AppColors.white80),),
              const SizedBox(height: 32,),
              buildContainer(
                  context: context,
                  label: 'Email',
                  prefixIcon:
                      Icon(Icons.email, size: 20, color: AppColors.white80)),
              const SizedBox(height: 35,),
              Text("Share your experience",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 6,),
              RatingBar.builder(
                initialRating: 3.5,
                minRating: 1,
                // itemSize: 25,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.only(right: 8),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
          
              const SizedBox(height: 35,),
              TextFormField(
                maxLines: 12,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Add text here',
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:AppColors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:AppColors.white),
                  )
                ),
              ),
              const SizedBox(height: 56,),
              Utils.primaryButton(title: 'Send', onPressed: (){}),
              const SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
      {required BuildContext context,
      required Icon prefixIcon,
      String? label,
      TextEditingController? controller}) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      padding: AppPadding.padding(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFF292826),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        //   color: AppColors.white6,
        // ),
      ),
      child: Row(
        children: [
          prefixIcon,
          const SizedBox(width: 12),
          SizedBox(
            height: 20, // Set height to make VerticalDivider visible
            child: VerticalDivider(
              color: AppColors.white10,
              thickness: 1,
              width: 1,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: false,
                hintText: label,
                hintStyle: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w200,
                  color: AppColors.white80
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
