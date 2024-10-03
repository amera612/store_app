import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required this.buttonText});
  String buttonText;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 81, 140, 229),
          borderRadius: BorderRadius.circular(9),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
