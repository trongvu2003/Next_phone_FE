import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../products/product_detail.dart';
import '../views/home/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case AppRoutes.productDetail:
        final product = settings.arguments as ProductModel;

        return MaterialPageRoute(
          builder: (_) => ProductDetail(product: product),
        );

      default:
        return null;
    }
  }
}