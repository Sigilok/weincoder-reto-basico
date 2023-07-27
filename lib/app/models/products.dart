class Product {
  final int id;
  final String name;
  final String type;
  final String image;
  final String generics;
  final double price;
  final String origin;
  final String description;

  Product({
    required this.type,
    required this.generics,
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.origin,
    required this.description,
  });
}
