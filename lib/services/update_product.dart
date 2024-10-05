import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
    required dynamic id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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
