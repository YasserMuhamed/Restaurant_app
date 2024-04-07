import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/Pages/food_page.dart';
import 'package:resturant_app/components/custom_drawer.dart';
import 'package:resturant_app/components/custom_sliver_app_bar.dart';
import 'package:resturant_app/components/description_box.dart';
import 'package:resturant_app/components/food_tile.dart';
import 'package:resturant_app/components/my_current_location.dart';
import 'package:resturant_app/components/tab_bar.dart';
import 'package:resturant_app/models/food_model.dart';
import 'package:resturant_app/models/restaurant_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Foods> _filterMenuByCategory(
      FoodCategory category, List<Foods> fullMenu) {
    return fullMenu.where((food) => food.foodCategory == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Foods> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Foods> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
              food: categoryMenu[index],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food)));
              });
        },
      );
    }).toList();
  }

  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      drawer: const CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) => [
              CustomSliverAppBar(
                  title: CustomTabBar(
                    tabController: _tabController,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      // current location
                      MyCurrentLocation(),

                      //DescriptionBox
                      DescriptionBox(),
                    ],
                  ))
            ]),
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
