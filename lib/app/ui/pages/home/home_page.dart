import 'package:flowers_app/app/data/produts_list.dart';
import 'package:flowers_app/app/ui/routes/routes.dart';
import 'package:flowers_app/app/ui/utils/colors_app.dart';
import 'package:flowers_app/app/ui/widgets/chip_flower.dart';
import 'package:flowers_app/app/ui/widgets/list_view_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spring \nFlowers.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 40,
              child: ListViewMenu(
                  scrollDirection: Axis.horizontal,
                  style: Theme.of(context).textTheme.bodySmall!),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) => ChipFlowers(
                  country: products[index].origin,
                  nameFlower: products[index].name,
                  price: products[index].price,
                  image: products[index].image,
                  id: index,
                ),
              ),
            ),
          ],
        ),
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
