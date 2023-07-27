import 'package:flowers_app/app/ui/utils/colors_app.dart';
import 'package:flowers_app/app/ui/utils/copys.dart';
import 'package:flowers_app/app/ui/widgets/circle.dart';
import 'package:flutter/material.dart';

import '../../widgets/list_view_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Stack(children: [
          const Positioned(
            right: -50,
            top: -50,
            child: Circle(size: 320, color: ColorsApp.secundaryColor),
          ),
          const Positioned(
            right: -30,
            bottom: -30,
            child: Circle(size: 170, color: ColorsApp.primaryLight),
          ),
          const Positioned(
            left: 30,
            top: 455,
            child: Circle(size: 60, color: ColorsApp.secundaryLight),
          ),
          Positioned(
            top: 220,
            left: 50,
            height: 400,
            width: 180,
            child: ListViewMenu(
              scrollDirection: Axis.vertical,
              style: Theme.of(context).textTheme.bodyMedium!,
            ),
          ),
          Positioned(
            left: 50,
            bottom: 30,
            height: 40,
            child: InkWell(
              onTap: () => print(Copys.setting),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    start:
                        BorderSide(color: ColorsApp.secundaryColor, width: 0.5),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    Copys.setting,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
