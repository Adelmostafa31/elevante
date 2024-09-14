import 'package:elevante/core/networking/api_error_handler.dart';
import 'package:elevante/core/networking/api_result.dart';
import 'package:elevante/core/networking/api_service.dart';
import 'package:elevante/features/products/data/models/get_response_products.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<List<GetResponseProducts>>> getProducts() async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
