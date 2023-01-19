import 'package:apihendling/data/model/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {}

class ProductLoadingState extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoadedState extends ProductState {
  final List<ProductModel> data;

  ProductLoadedState(this.data);
  @override
  List<Object> get props => [data];
}

class ProductErrorState extends ProductState {
  final String error;

  ProductErrorState(this.error);
  @override
  List<Object> get props => [error];
}
