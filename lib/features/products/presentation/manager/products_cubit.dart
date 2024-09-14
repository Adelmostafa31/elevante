import 'package:elevante/features/products/data/models/get_response_products.dart';
import 'package:elevante/features/products/data/repo/products_repo.dart';
import 'package:elevante/features/products/presentation/manager/products_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this._productsRepo) : super(ProductsInitial());
  final ProductsRepo _productsRepo;
  static ProductsCubit get(context) => BlocProvider.of(context);

  List<GetResponseProducts> products = [];
  Future getProducts() async {
    products.clear();
    emit(GetProductsLoadingState());
    final response = await _productsRepo.getProducts();
    response.when(
      success: (data) {
        for (int i = 0; i < data.length; i++) {
          products.add(data[i]);
        }
        emit(GetProductsSuccessState());
      },
      failure: (error) {
        emit(GetProductsFailureState(error.failure.message ?? ''));
      },
    );
  }
}
