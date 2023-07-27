import 'package:flowers_app/app/data/produts_list.dart';
import 'package:flowers_app/app/ui/utils/copys.dart';
import 'package:flowers_app/app/ui/widgets/circle.dart';
import 'package:flowers_app/app/ui/widgets/stars.dart';
import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../routes/routes.dart';
import '../../utils/colors_app.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    Product flower = products[id];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, RoutesApp.menu),
            icon: const Icon(
              Icons.menu,
              color: ColorsApp.secundaryLight,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: (MediaQuery.of(context).size.height - 60) / 2,
            child: Stack(children: [
              Positioned(
                left: (MediaQuery.of(context).size.width - 300) / 2,
                child: const Circle(
                  size: 300,
                  color: ColorsApp.secundary,
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width - 260) / 2,
                top: 20,
                child: const Circle(
                  size: 260,
                  color: ColorsApp.primary,
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width - 260) / 2,
                top: 25,
                child: Image.asset(flower.image, scale: 3.8),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Stars(
                  color: ColorsApp.secundaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(flower.name, textAlign: TextAlign.left),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          start: BorderSide(
                              color: ColorsApp.secundaryColor, width: 0.5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Copys.type,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            flower.type,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: ColorsApp.secundaryColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          start: BorderSide(
                              color: ColorsApp.secundaryColor, width: 0.5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Copys.genetics,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            flower.generics,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: ColorsApp.secundaryColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  flower.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: ColorsApp.secundary,
        ),
      ),
    );
  }
}
