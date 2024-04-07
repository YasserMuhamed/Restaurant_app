import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var pColor = Theme.of(context).colorScheme.inversePrimary;
    var sColor = Theme.of(context).colorScheme.primary;

    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.99",
                style: TextStyle(color: pColor),
              ),
              Text(
                'Delivery fee',
                style: TextStyle(color: sColor),
              )
            ],
          ),
          Column(children: [
            Text(
              "\$15-30 min",
              style: TextStyle(color: pColor),
            ),
            Text(
              'Delivery time',
              style: TextStyle(color: sColor),
            )
          ])
        ],
      ),
    );
  }
}
