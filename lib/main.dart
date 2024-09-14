import 'package:elevante/core/di/dependency_injection.dart';
import 'package:elevante/core/helpers/bloc_observer.dart';
import 'package:elevante/core/routing/app_router.dart';
import 'package:elevante/products_run.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  Bloc.observer = MyBlocObserver();

  runApp(
    ProductsRun(
      appRouter: AppRouter(),
    ),
  );
}
