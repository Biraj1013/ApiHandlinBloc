import 'package:apihendling/data/model/product_model.dart';

abstract class ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<ProductModel> data;

  ProductLoadedState(this.data);
}

class ProductErrorState extends ProductState {
  final String error;

  ProductErrorState(this.error);
}
