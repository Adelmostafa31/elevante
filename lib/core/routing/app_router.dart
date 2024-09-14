import 'package:elevante/core/routing/routes.dart';
import 'package:elevante/features/products/presentation/views/products.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.products:
        return MaterialPageRoute(
          builder: (context) => const Products(),
        );
    }
    return null;
  }
}
