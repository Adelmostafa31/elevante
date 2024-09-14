import 'package:elevante/core/routing/app_router.dart';
import 'package:elevante/core/routing/routes.dart';
import 'package:elevante/core/theming/theming.dart';
import 'package:flutter/material.dart';

class ProductsRun extends StatelessWidget {
  const ProductsRun({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute: Routes.products,
      theme: theme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
