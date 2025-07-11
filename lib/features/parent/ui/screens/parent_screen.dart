import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/features/parent/bloc/parent_bloc.dart';

import '../../../../core/constant/app_icons.dart';

class ParentScreen extends StatelessWidget {
  const  ParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ParentBloc(),
      child: BlocBuilder<ParentBloc,int>(
        builder: (context,currentIndex) {
          final bloc = context.read<ParentBloc>();
          return Scaffold(
            body: bloc.screens[currentIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashFactory: NoSplash.splashFactory,       // disables splash animations completely
                splashColor: Colors.transparent,             // extra safety: transparent splash
                highlightColor: Colors.transparent,          // disables highlight color
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xFF0A0A0A),
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.midGrey,
                currentIndex:currentIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (int index) {
                  bloc.changeTab(index);
                },
                items: const [
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppIcons.homeMenu)), label: ''),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppIcons.playList)), label: ''),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppIcons.live)), label: ''),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppIcons.notification)), label: ''),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppIcons.settings)), label: ''),
                ],
              ),
            )

            ,
          );
        }
      ),
    );
  }
}
