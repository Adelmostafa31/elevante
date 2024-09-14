import 'package:elevante/core/networking/api_service.dart';
import 'package:elevante/features/products/data/models/get_response_products.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);
  Future<List<GetResponseProducts>> getInternal() async {
    var result = await _apiService.getProducts();
    return result.map((e) => GetResponseProducts.fromJson(e.toJson())).toList();
  }
}
