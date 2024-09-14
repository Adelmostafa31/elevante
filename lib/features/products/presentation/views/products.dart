import 'package:elevante/core/helpers/extentions.dart';
import 'package:elevante/core/theming/colors.dart';
import 'package:elevante/core/theming/styles.dart';
import 'package:elevante/core/widgets/show_error_message.dart';
import 'package:elevante/features/products/presentation/manager/products_cubit.dart';
import 'package:elevante/features/products/presentation/manager/products_states.dart';
import 'package:elevante/features/products/presentation/views/widgets/products_image.dart';
import 'package:elevante/features/products/presentation/views/widgets/ratings_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductsCubit>(context).emitGetProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsStates>(
      builder: (context, state) {
        if (state is GetProductsLoadingState) {
          return Scaffold(
            body: circular,
          );
        }
        return state is GetProductsFailureState
            ? ShowErrorMessage(message: state.error)
            : state is GetProductsSuccessState
                ? Scaffold(
                    appBar: AppBar(
                      title: Text(
                        'Products',
                        style: TextStyles.font20BlueBold,
                      ),
                    ),
                    body: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemCount: (state).productsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorsManager.white,
                            border: Border.all(
                              color: ColorsManager.blue,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProductImage(
                                image: (state).productsList[index].image,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                (state).productsList[index].title,
                                style: TextStyles.font14Blue,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              const Spacer(),
                              RatingsRow(
                                rate: (state)
                                    .productsList[index]
                                    .rating['rate']
                                    .toString(),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox.shrink();
      },
    );
  }
}
