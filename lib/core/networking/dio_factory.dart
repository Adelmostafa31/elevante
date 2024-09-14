// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  // private constructor as i don't want to allow to make instances from this class
  DioFactory._();
  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timout
        ..options.receiveTimeout = timout;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        responseHeader: true,
      ),
    );
  }
}
