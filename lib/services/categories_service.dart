import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesService(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
