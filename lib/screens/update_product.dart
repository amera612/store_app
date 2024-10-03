import 'package:flutter/material.dart';
import 'package:store_appp/models/product_model.dart';
import 'package:store_appp/services/update_product.dart';
import 'package:store_appp/widgets/custom_button.dart';
import 'package:store_appp/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'update product';

  String? productName, desc, image;
  dynamic price;
  @override
  Widget build(BuildContext context) {
    //🥊🥊🥊🥊🥊🥊🥊🥊🥊 to take data from product🥊🥊🥊🥊🥊🥊🥊🥊🥊
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Update product'),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100),
                CustomTextField(
                  hintText: 'product name',
                  onChange: (data) {
                    productName = data;
                  },
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  hintText: 'Description',
                  onChange: (data) {
                    desc = data;
                  },
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  inputType: TextInputType.number,
                  hintText: 'Price',
                  onChange: (data) {
                    price = data;
                  },
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  hintText: 'image',
                  onChange: (data) {
                    image = data;
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  buttonText: 'Update',
                  onTap: () {
                    UpdateProductService().updateProduct(
                      title: productName!,
                      price: price,
                      description: desc!,
                      category: product.category,
                      image: image!,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
