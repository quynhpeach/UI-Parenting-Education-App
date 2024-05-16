import 'package:concuatui_appclone/navigation/config_router.dart';
import 'package:concuatui_appclone/navigation/navigation_bottombar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      //home: NavigationBottomBar(),
    );
  }
}
