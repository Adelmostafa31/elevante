abstract class ProductsStates {}

class ProductsInitial extends ProductsStates {}

class GetProductsLoadingState extends ProductsStates {}

class GetProductsSuccessState extends ProductsStates {}

class GetProductsFailureState extends ProductsStates {
  final String error;

  GetProductsFailureState(this.error);
}
