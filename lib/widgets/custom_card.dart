import 'package:flutter/material.dart';
import 'package:store_appp/models/product_model.dart';
import 'package:store_appp/screens/update_product.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.product,
  });
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //🥊🥊🥊🥊🥊🥊🥊🥊🥊 to send the product's data with navigate
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: 130,
            // width: 190,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50.0,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.0,
                offset: const Offset(10.0, 10.0),
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17.0,
                  vertical: 18.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'yallh',
                      product.title.substring(0, 7),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          // '\$ 33',
                          '  \$ ${product.price.toString()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20.0,
            top: -50.0,
            child: Image.network(
              product.image,
              // 'https://pngimg.com/d/women_bag_PNG6417.png',
              height: 80.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
