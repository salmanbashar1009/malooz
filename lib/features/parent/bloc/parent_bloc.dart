import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/features/details/ui/screen/details_screen.dart';
import 'package:malooz/features/home/ui/screens/home_screen.dart';
import 'package:malooz/features/live/ui/screens/live_screen.dart';
import 'package:malooz/features/notifications/ui/screens/notifications_screen.dart';
import 'package:malooz/features/settings/ui/screens/settings_screen.dart';

class ParentBloc extends Cubit<int> {
  ParentBloc() : super(0);

  void changeTab(int index) => emit(index);

  List<Widget> get screens =>  [
     HomeScreen(),
    DetailsScreen(),
    LiveScreen(),
    NotificationsScreen(),
    SettingsScreen()
  ];
}
