import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/custom_button.dart';
import 'package:resturant_app/models/food_model.dart';
import 'package:resturant_app/models/restaurant_model.dart';

class FoodPage extends StatefulWidget {
  final Foods food;
  final Map<Addon, bool> selectedAddon = {};

  FoodPage({super.key, required this.food})
  // initialize first value of checkbox to false
  {
    for (Addon addon in food.availableAddon) {
      selectedAddon[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //

  //
  void addToCart(Foods food, Map<Addon, bool> selectedAddon) {
    Navigator.pop(context);
    List<Addon> currentSelectedAddons = [];
    for (Addon addon in widget.food.availableAddon) {
      if (widget.selectedAddon[addon] == true) {
        currentSelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentSelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image

                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      // food price
                      Text("\$${widget.food.price}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .inversePrimary)),

                      const SizedBox(height: 10),

                      // food description
                      Text(widget.food.description,
                          style: const TextStyle(
                            fontSize: 16,
                          )),

                      const SizedBox(height: 10),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Add-Ons",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 10),

                      // food addons
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            )),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddon.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final addon = widget.food.availableAddon[index];
                              return CheckboxListTile(
                                  title: Text(addon.name),
                                  subtitle: Text(
                                    "\$${addon.price}",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  value: widget.selectedAddon[addon],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddon[addon] = value!;
                                    });
                                  });
                            }),
                      ),
                      const SizedBox(height: 10),

                      CustomButton(
                        text: "Add To Cart",
                        onTap: () {
                          addToCart(widget.food, widget.selectedAddon);
                        },
                      )

                      // button add to cart
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
