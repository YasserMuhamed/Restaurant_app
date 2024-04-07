// ignore_for_file: constant_identifier_names

class Foods {
  final String name;
  final String imagePath;
  final String description;
  final double price;
  final FoodCategory foodCategory;
  final List<Addon> availableAddon;

  Foods({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.foodCategory,
    required this.availableAddon,
  });
}

enum FoodCategory {
  Burgers,
  Salads,
  Sides,
  Desserts,
  Drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
