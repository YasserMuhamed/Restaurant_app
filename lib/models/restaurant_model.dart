import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/models/cart_item.dart';
import 'package:resturant_app/models/food_model.dart';

class Restaurant extends ChangeNotifier {
  //
  final List<Foods> _menu = [
    // Burgers

    Foods(
      name: "Classic Burger",
      price: 3.99,
      imagePath: "assets/images/burgers/a classic burger.jpg",
      description: "a classic burger with onion and beef bacon",
      foodCategory: FoodCategory.Burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: .99),
        Addon(name: "Bacon", price: .99),
        Addon(name: "Sauce", price: .99)
      ],
    ),
    Foods(
      name: "Molo's Burger",
      price: 6.99,
      imagePath: "assets/images/burgers/B2.jpg",
      description: "a burger with onion and beef bacon with hot sauce",
      foodCategory: FoodCategory.Burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 0.99),
        Addon(name: "avocado", price: 1.99)
      ],
    ),
    Foods(
      name: "7days Burger",
      price: 13.99,
      imagePath: "assets/images/burgers/B3.jpg",
      description: "a classic burger with onion and beef bacon",
      foodCategory: FoodCategory.Burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
        Addon(name: "Sauce", price: 3.99)
      ],
    ),
    Foods(
      name: "YoSmash Burger",
      price: 7.99,
      imagePath: "assets/images/burgers/B4.jpg",
      description:
          "a classic burger with onion , beef bacon and caramelized onion ",
      foodCategory: FoodCategory.Burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Sauce", price: 3.99)
      ],
    ),
    Foods(
      name: "BlackBun Burger",
      price: 3.99,
      imagePath:
          "assets/images/burgers/a burger with a black sesame seed bun and gourmet toppings.jpg",
      description:
          "a burger with a black sesame seed bun and gourmet toppings.jpg",
      foodCategory: FoodCategory.Burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: .99),
        Addon(name: "Bacon", price: .99),
        Addon(name: "Sauce", price: .99)
      ],
    ),

    // Desserts

    Foods(
      name: "Chocolate Cake",
      price: 18.49,
      imagePath:
          "assets/images/desserts/a chocolate cake with raspberry topping.jpg",
      description: "a chocolate cake with raspberry topping",
      foodCategory: FoodCategory.Desserts,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "cream", price: 3.99),
        Addon(name: "fruits", price: 5.99)
      ],
    ),
    Foods(
      name: "Egyptian dessert",
      price: 15.00,
      imagePath: "assets/images/desserts/a traditional Egyptian dessert.jpg",
      description: "a traditional Egyptian dessert",
      foodCategory: FoodCategory.Desserts,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "cream", price: 3.99),
        Addon(name: "fruits", price: 5.99)
      ],
    ),
    Foods(
      name: "Fruit Tart",
      price: 20.49,
      imagePath: "assets/images/desserts/a fruit tart with a flaky crust .jpg",
      description: "a fruit tart with a flaky crust",
      foodCategory: FoodCategory.Desserts,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "cream", price: 3.99),
        Addon(name: "fruits", price: 5.99)
      ],
    ),
    Foods(
      name: "fruit tart with fresh berries",
      price: 18.49,
      imagePath:
          "assets/images/desserts/a fruit tart with a flaky crust and fresh berries.jpg",
      description: "a fruit tart with a flaky crust and fresh berries",
      foodCategory: FoodCategory.Desserts,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "cream", price: 3.99),
        Addon(name: "fruits", price: 5.99)
      ],
    ),
    Foods(
      name: "Chocolate Cake",
      price: 9.99,
      imagePath: "assets/images/desserts/basbosa dessert.jpg",
      description: "sweet egyptian dessert",
      foodCategory: FoodCategory.Desserts,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "cream", price: 3.99),
        Addon(name: "fruits", price: 5.99)
      ],
    ),

    // Drinks

    Foods(
      name: "Iced Tea",
      price: 3.99,
      imagePath: "assets/images/drinks/a refreshing iced tea with lemon.jpg",
      description: "a refreshing iced tea with lemon",
      foodCategory: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "sugar", price: 0.99),
        Addon(name: "cream", price: 1.99)
      ],
    ),
    Foods(
      name: "Cocktail",
      price: 11.99,
      imagePath:
          "assets/images/drinks/a signature cocktail with a unique presentation.jpg",
      description: "a signature cocktail with a unique presentation",
      foodCategory: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "sugar", price: 0.99),
        Addon(name: "cream", price: 1.99)
      ],
    ),
    Foods(
      name: "strawberry smoothie",
      price: 6.99,
      imagePath: "assets/images/drinks/a strawberry smoothie.jpg",
      description: "a strawberry smoothie",
      foodCategory: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 1.99),
        Addon(name: "sugar", price: 0.99),
        Addon(name: "cream", price: 1.99)
      ],
    ),
    Foods(
      name: "Mango Juice",
      price: 13.99,
      imagePath: "assets/images/drinks/mango juice.jpg",
      description: "mango juice",
      foodCategory: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "sugar", price: 0.99),
        Addon(name: "cream", price: 5.99)
      ],
    ),
    Foods(
      name: "Mango Smothie",
      price: 15.99,
      imagePath: "assets/images/drinks/mango smothie.jpg",
      description: "mango smothie",
      foodCategory: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "chocolate sauce", price: 2.99),
        Addon(name: "sugar", price: 0.99),
        Addon(name: "cream", price: 5.99)
      ],
    ),

    // salads

    Foods(
      name: "Tuna Salad",
      price: 5.99,
      imagePath: "assets/images/salads/1.jpg",
      description: "green salad with tuna",
      foodCategory: FoodCategory.Salads,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Potato Salad",
      price: 9.99,
      imagePath: "assets/images/salads/2.jpg",
      description: "green salad with Potato",
      foodCategory: FoodCategory.Salads,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Beans Salad",
      price: 8.99,
      imagePath: "assets/images/salads/beans salad.jpg",
      description: "green salad with Potato",
      foodCategory: FoodCategory.Salads,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Feta Salad",
      price: 9.99,
      imagePath: "assets/images/salads/feta salad.jpg",
      description: "green salad with Feta Cheese",
      foodCategory: FoodCategory.Salads,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Green Salad",
      price: 9.99,
      imagePath: "assets/images/salads/green salad.jpg",
      description: "green salad",
      foodCategory: FoodCategory.Salads,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),

    // sides

    Foods(
      name: "Cheese with Bread",
      price: 5.99,
      imagePath: "assets/images/sides/cheese .jpg",
      description: "Cheeses Plate",
      foodCategory: FoodCategory.Sides,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Potato Plate",
      price: 5.99,
      imagePath: "assets/images/sides/fries.jpg",
      description: "french fries with Ketchup",
      foodCategory: FoodCategory.Sides,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Garlic Bread",
      price: 5.99,
      imagePath: "assets/images/sides/garlic bread.jpg",
      description: "grilled bread with smashed garlic and oregano",
      foodCategory: FoodCategory.Sides,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "OnionRings",
      price: 5.99,
      imagePath: "assets/images/sides/onion rings.jpg",
      description: "Fried Onion Rings with sauce",
      foodCategory: FoodCategory.Sides,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
    Foods(
      name: "Sauces",
      price: 5.99,
      imagePath: "assets/images/sides/sauce.jpg",
      description: "Special original sauces",
      foodCategory: FoodCategory.Sides,
      availableAddon: [
        Addon(name: "cheese", price: 2.99),
        Addon(name: "sauce", price: 0.99),
        Addon(name: "garlic bread", price: 1.99)
      ],
    ),
  ];

  // Getters
  List<Foods> get menu => _menu;

  List<CartItem> get cart => _cart;

  /*  

  Operations 

  */

  final List<CartItem> _cart = [];

  // add to cart

  void addToCart(Foods food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the addons items are the same

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddon, selectedAddons);

      return isSameAddons && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

   Helpers
  
   */
}
