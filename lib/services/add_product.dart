import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
      },
    );
    return ProductModel.fromJson(data);
  }
}
