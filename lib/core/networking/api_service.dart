// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'package:dio/dio.dart';
import 'package:elevante/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Apiconstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
