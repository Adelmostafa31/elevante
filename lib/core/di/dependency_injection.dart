// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:elevante/core/networking/api_service.dart';
import 'package:elevante/core/networking/dio_factory.dart';
import 'package:elevante/features/products/data/repo/products_repo.dart';
import 'package:elevante/features/products/presentation/manager/products_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Products
  getit.registerLazySingleton<ProductsRepo>(
      () => ProductsRepo(getit<ApiService>()));
  getit.registerFactory<ProductsCubit>(() => ProductsCubit(getit()));
}
