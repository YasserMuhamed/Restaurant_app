import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/cart_tile.dart';
import 'package:resturant_app/components/custom_button.dart';
import 'package:resturant_app/models/restaurant_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;
      return Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          centerTitle: true,
          title: const Text("Cart"),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            actionsAlignment: MainAxisAlignment.spaceAround,
                            title: Text(
                              "Are you sure you want to clear the cart?",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 20),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary,
                                        fontSize: 16),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    if (restaurant.cart.isNotEmpty) {
                                      restaurant.clearCart();
                                      Navigator.pop(context);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  "Cart Is already Empty")));
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary,
                                        fontSize: 16),
                                  ))
                            ],
                          ));
                },
                icon: const Icon(Icons.delete_outline_rounded))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  restaurant.cart.isEmpty
                      ? Expanded(
                          child: Center(
                              child: Text(
                          "Cart is Empty..",
                          style: TextStyle(
                              fontSize: 22,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        )))
                      : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = userCart[index];
                              return CartTile(cartItem: cartItem);
                            },
                          ),
                        )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 16, top: 16),
              child: CustomButton(text: "CheckOut", onTap: () {}),
            )
          ],
        ),
      );
    });
  }
}
