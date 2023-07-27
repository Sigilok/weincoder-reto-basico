import 'package:flowers_app/app/ui/routes/routes.dart';
import 'package:flowers_app/app/ui/routes/routes_app.dart';
import 'package:flowers_app/app/ui/utils/theme_app.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flower App',
      theme: ThemeApp.themeData,
      routes: routes,
      initialRoute: RoutesApp.home,
    );
  }
}
