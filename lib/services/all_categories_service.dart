import 'package:store_appp/helper/api.dart';

class AllCategories {
  Future<List> getAllCategories() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
