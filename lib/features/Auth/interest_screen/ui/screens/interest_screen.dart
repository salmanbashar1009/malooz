import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/route_config/route_names.dart';
import '../../../../../core/utls/utls.dart';

class InterestScreen extends StatelessWidget {
   InterestScreen({super.key});

  final List<String> interests = [
    "Action",
    "Romantic",
    "Thriller",
    "Drama",
    "Series",
    "Crime",
    "Music",
    "Live",
    "Horror",
    "Comedy",
    "Sports"
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: () {
          Navigator.pop(context);
        }),
        centerTitle: true,
        title: Text(
          "Choose your interests",
          style: textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            children: [
              const SizedBox(height: 16,),
              Text(
                  '''Choose your interests here and get the best movie recommendations. Don’t worrry you can always change it latter''',style: textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 24,),
              Expanded(
                child: GridView.builder(
                  itemCount: interests.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Or 3, or however many columns you want
                    crossAxisSpacing: 15.0, // Corresponds to Wrap's spacing
                    mainAxisSpacing: 20.0,  // Corresponds to Wrap's runSpacing
                    childAspectRatio: 3/1.2, // Adjust as needed to get desired item height vs width
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: Text(
                        interests[index],
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.center, // Optional: ensure text is centered if it wraps
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Row(
                spacing: 16,
                children: [
                  Expanded(child: Utils.primaryButton(title: "Skip",backgroundColor: AppColors.buttonColor, onPressed: (){},)),
                  Expanded(child: Utils.primaryButton(title: "Continue", onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, RouteNames.parentScreen, (route) => false);
                  })),
                ],
              ),
              const SizedBox(height: 35,)

            ],
          ),
        ),
      ),
    );
  }
}
