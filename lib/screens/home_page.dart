import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_appp/models/product_model.dart';
import 'package:store_appp/services/all_product_service.dart';
import 'package:store_appp/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(FontAwesomeIcons.cartArrowDown),
            )
          ],
          centerTitle: true,
          title: const Text(
            'New Trend',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 30.0,
          ),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProducts().getAllProduct(),
            builder: (context, snapshot) {
              //log('Snapshot state: ${snapshot.connectionState}');
              // if (snapshot.hasError) {
              //   return Center(
              //       child: Text(
              //     'Error: ${snapshot.error}',
              //     style: const TextStyle(fontSize: 22),
              //   ));
              // } else if (snapshot.hasData) {
              //   List<ProductModel> product = snapshot.data!;
              return GridView.builder(
                // itemCount: product.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4, //width : hight
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 60.0,
                ),
                itemBuilder: (context, index) {
                  //log('Building item for product: ${product[index]}');
                  return CustomCard(
                      // product: product[index],
                      );
                },
              );
              // } else {
              //   return const Center(child: CircularProgressIndicator());
              // }
            },
          ),
        ),
      ),
    );
  }
}
