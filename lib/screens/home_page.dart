import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              horizontal: 15,
              vertical: 30,
            ),
            child: GridView.builder(
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4, //width : hight
                crossAxisSpacing: 10,
                mainAxisSpacing: 60,
              ),
              itemBuilder: (context, index) {
                return const CustomCard();
              },
            ),
          )),
    );
  }
}
