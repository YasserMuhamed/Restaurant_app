import 'package:flutter/material.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          children: [
            const Text("Thank You for ordering"),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary)),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text("Receipt Here.."),
              ),
            )
          ],
        ),
      ),
    );
  }
}
