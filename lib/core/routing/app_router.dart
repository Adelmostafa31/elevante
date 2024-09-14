import 'package:elevante/core/di/dependency_injection.dart';
import 'package:elevante/core/routing/routes.dart';
import 'package:elevante/features/products/presentation/manager/products_cubit.dart';
import 'package:elevante/features/products/presentation/views/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.products:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ProductsCubit(getit()),
            child: const Products(),
          ),
        );
    }
    return null;
  }
}
