import 'package:flutter/material.dart';

import '../../../../core/constant/app_icons.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/utls/utls.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: Utils.appBar(context: context,title: "Notifications",actions: [
        GestureDetector(
          onTap: (){},
          child: Image.asset(
            AppIcons.notifications,
            width: 24,
            height: 24,
          ),
        )
      ]),
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  AppImages.movie,
                  width: 65,
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Match starts in 15 minutes!",
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
              subtitle: Text(
                "Match details here this is just demo text here for more better experience.",
                style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white70),
              ),
            ),
          );
        },
      ),
    );
  }
}
