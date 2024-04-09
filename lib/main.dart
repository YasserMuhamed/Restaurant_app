import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/auth/login_or_register.dart';
import 'package:resturant_app/models/restaurant_model.dart';
import 'package:resturant_app/themes/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // resturant provider
        ChangeNotifierProvider(create: (context) => Restaurant())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const LoginOrRegister(),
    );
  }
}
