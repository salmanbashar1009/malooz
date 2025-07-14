import 'package:flutter/material.dart';
import 'package:malooz/core/route_config/route_names.dart';
import 'package:malooz/core/theme/app_theme.dart';
import 'core/route_config/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malooz',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      initialRoute: RouteNames.favouriteListScreen,
      routes: AppRoutes.routes,
    );
  }
}
