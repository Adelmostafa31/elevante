import 'package:elevante/features/products/data/repo/products_repo.dart';
import 'package:elevante/features/products/presentation/manager/products_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this._productsRepo) : super(ProductsInitial());
  final ProductsRepo _productsRepo;
  static ProductsCubit get(context) => BlocProvider.of(context);
  void emitGetProducts() async {
    emit(GetProductsLoadingState());
    await _productsRepo.getInternal().then(
          (productsList) => emit(
            GetProductsSuccessState(productsList: productsList),
          ),
        );
  }
}
