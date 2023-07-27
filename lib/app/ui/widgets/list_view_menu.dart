import 'package:flutter/material.dart';

import '../routes/routes.dart';
import '../utils/colors_app.dart';
import '../utils/menu_list.dart';

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({
    super.key,
    required this.scrollDirection,
    required this.style,
  });

  final Axis scrollDirection;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    TextStyle activeStyle = scrollDirection == Axis.horizontal
        ? const TextStyle(
            fontSize: 14,
            color: ColorsApp.primary,
          )
        : style;
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: menuList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.pushReplacementNamed(context, RoutesApp.home),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              menuList[index],
              style: menuList[index] == 'Flowers' ? activeStyle : style,
            ),
          ),
        );
      },
    );
  }
}
