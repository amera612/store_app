import 'package:flutter/material.dart';
import 'package:store_appp/widgets/custom_button.dart';
import 'package:store_appp/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'update product';

  String? productName, desc, image;
  dynamic price;
  @override
  Widget build(BuildContext context) {
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
                CustomButton(buttonText: 'Update'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
