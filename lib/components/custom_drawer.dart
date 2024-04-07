import 'package:flutter/material.dart';
import 'package:resturant_app/Pages/settings_page.dart';
import 'package:resturant_app/components/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Icon(
              Icons.lunch_dining_outlined,
              size: 120,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          DrawerTile(
            title: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),

          // settings list tile
          DrawerTile(
            title: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
          ),
          const Spacer(),

          // logout list tile
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: DrawerTile(
              title: "L O G O U T",
              icon: Icons.logout,
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
