import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar(
      {super.key, required this.child, required this.title});
  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        "Sunset Diner",
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
            ))
      ],
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.3,
        centerTitle: true,
        title: title,
        titlePadding: const EdgeInsets.only(top: 0, left: 0, right: 0),
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
      ),
    );
  }
}
