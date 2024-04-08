import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/increase_decrease_button.dart';
import 'package:resturant_app/models/cart_item.dart';
import 'package:resturant_app/models/restaurant_model.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.cartItem});
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name),
                    // ignore: prefer_interpolation_to_compose_strings
                    Text(
                      "\$" +
                          (cartItem.food.price * cartItem.quantity)
                              .toStringAsFixed(2),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                const Spacer(),
                QuantitySelector(
                  quantity: cartItem.quantity,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(cartItem.food, cartItem.selectedAddon);
                  },
                ),
              ],
            ),
            SizedBox(
              height: cartItem.selectedAddon.isEmpty ? 0 : 60,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddon
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: FilterChip(
                            shape: StadiumBorder(
                                side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            label: Row(
                              children: [
                                Text(addon.name + "  "),
                                Text("(\$${addon.price.toString()})")
                              ],
                            ),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
