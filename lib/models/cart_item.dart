import 'package:resturant_app/models/food_model.dart';

class CartItem {
  Foods food;
  List<Addon> selectedAddon;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddon,
    this.quantity = 1,
  });

  double get TotalPrice {
    double addonsPrice =
        selectedAddon.fold(0, (sum, addon) => addon.price + sum);
    return (food.price + addonsPrice);
  }
}
