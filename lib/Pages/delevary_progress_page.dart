import 'package:flutter/material.dart';
import 'package:resturant_app/components/my_receipt.dart';

class DelivaryProgressPage extends StatelessWidget {
  const DelivaryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Delivary In Progress.."),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: const MyReceipt(),
    );
  }
}
