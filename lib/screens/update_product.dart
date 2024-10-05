import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_appp/models/product_model.dart';
import 'package:store_appp/services/update_product.dart';
import 'package:store_appp/widgets/custom_button.dart';
import 'package:store_appp/widgets/custom_textfield.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  dynamic price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    //🥊🥊🥊🥊🥊🥊🥊🥊🥊 to take data from product🥊🥊🥊🥊🥊🥊🥊🥊🥊
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isloading,
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
                    onTap: () async {
                      isloading = true;
                      setState(() {});

                      try {
                        await updateProduct(product);
                        log('done ya pro');
                      } catch (e) {
                        log('tttttttt${e.toString()}');
                      }
                      isloading = false;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName ?? product.title,
      price: price ?? product.price.toString(),
      description: desc ?? product.description,
      category: product.category,
      image: image ?? product.image,
    );
  }
}
