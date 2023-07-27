import 'package:flowers_app/app/ui/pages/detail/detail_page.dart';
import 'package:flowers_app/app/ui/pages/home/home_page.dart';
import 'package:flowers_app/app/ui/pages/menu/menu_page.dart';
import 'package:flowers_app/app/ui/routes/routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  RoutesApp.home: (context) => const HomePage(),
  RoutesApp.detail: (context) =>
      DetailPage(id: ModalRoute.of(context)!.settings.arguments as int),
  RoutesApp.menu: (context) => const MenuPage(),
};
