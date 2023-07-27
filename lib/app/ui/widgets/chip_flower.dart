import 'package:flowers_app/app/ui/routes/routes.dart';
import 'package:flowers_app/app/ui/utils/colors_app.dart';
import 'package:flowers_app/app/ui/widgets/stars.dart';
import 'package:flutter/material.dart';

class ChipFlowers extends StatelessWidget {
  const ChipFlowers({
    super.key,
    required this.country,
    required this.nameFlower,
    required this.price,
    required this.image,
    required this.id,
  });

  final String country;
  final String nameFlower;
  final double price;
  final String image;
  final int id;

  @override
  Widget build(BuildContext context) {
    Color current =
        id % 2 == 0 ? ColorsApp.secundaryColor : ColorsApp.primaryLight;
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
      height: 500,
      width: 220,
      decoration: BoxDecoration(
        color: current,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(125)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(10, 15),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  current,
                  ColorsApp.secundary,
                ],
                begin: Alignment.topCenter,
              ),
              image: DecorationImage(
                  image: AssetImage(image),
                  scale: 6,
                  colorFilter: const ColorFilter.srgbToLinearGamma()),
            ),
            child: Stack(children: [
              Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Colors.white70, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: ColorsApp.secundary,
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Stars(
                  color: ColorsApp.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  country,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesApp.detail,
                        arguments: id);
                  },
                  child: Text(
                    nameFlower,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '1 Oz /\$ $price',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
