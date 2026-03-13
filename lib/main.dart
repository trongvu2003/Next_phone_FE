import 'package:flutter/material.dart';
import 'package:nextphone/routes/app_pages.dart';
import 'package:nextphone/views/home/home_page.dart';
import 'views/intro_page.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context)=> const HomePage(),
        // AppRoutes.cart: (context)=> const CartPage(),
      },
      onGenerateRoute: AppPages.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
    );
  }
}