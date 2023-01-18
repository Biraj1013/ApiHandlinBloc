import 'package:apihendling/data/model/product_model.dart';
import 'package:apihendling/logic/cubits/product_cubit/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/products_repo.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoadingState()) {
    fetchProducts();
  }

  ProductsRepository productsRepository = ProductsRepository();

  void fetchProducts() async {
    try {
      List<ProductModel> products = await productsRepository.fetchData();
      emit(ProductLoadedState(products));
    } catch (e) {
      emit(ProductErrorState(e.toString()));
    }
  }
}
