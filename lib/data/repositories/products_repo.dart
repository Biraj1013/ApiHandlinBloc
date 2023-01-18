import 'package:apihendling/data/model/product_model.dart';
import 'package:apihendling/data/repositories/api/api_services.dart';
import 'package:apihendling/data/repositories/api/constants.dart';

class ProductsRepository {
  ApiService api = ApiService();

  Future<List<ProductModel>> fetchData() async {
    var url = ApiConstants.todoUrl;

    try {
      var result = await api.get(url);
      List<dynamic> response = result;
      List<ProductModel> dataList =
          response.map((i) => ProductModel.fromJson(i)).toList();
      return dataList;
    } catch (e) {
      throw (e.toString());
    }
  }
}
