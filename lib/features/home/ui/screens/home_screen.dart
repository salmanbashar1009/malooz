import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: SizedBox(height: 40, child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 0),
              hintText: "Search  by title, actor, competition",
              hintStyle:  textTheme.bodySmall?.copyWith(color: AppColors.white20),
              fillColor: AppColors.white10,
              prefixIcon: const Icon(Icons.search,color: AppColors.white20,size: 18,),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white6),
                 borderRadius: BorderRadius.circular(99)
              ),

            ),
          )),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle,
                  size: 40,
                  color: AppColors.grey,
                ))
          ],
        ),
        const SizedBox(height: 12,)
      ],
    );
  }
}
