import 'package:elevante/features/products/data/models/get_response_products.dart';

abstract class ProductsStates {}

class ProductsInitial extends ProductsStates {}

class GetProductsLoadingState extends ProductsStates {}

class GetProductsSuccessState extends ProductsStates {
  final List<GetResponseProducts> productsList;

  GetProductsSuccessState({required this.productsList});
}

class GetProductsFailureState extends ProductsStates {
  final String error;

  GetProductsFailureState(this.error);
}
