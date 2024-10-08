// ignore_for_file: missing_required_param

import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/product_model.dart';

class AllProducts {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
