import 'package:flutter/material.dart';
import 'package:resturant_app/models/food_model.dart';

class FoodPage extends StatelessWidget {
  final Foods food;
  const FoodPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.asset(food.imagePath)],
      ),
    );
  }
}
