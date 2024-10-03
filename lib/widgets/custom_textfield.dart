import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.onChange,
    this.obscureText,
    this.inputType,
  });
  void Function(String)? onChange;
  String? hintText;
  bool? obscureText;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        keyboardType: inputType,
        obscureText: obscureText ?? false,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return 'field is required';
        //   }
        // },
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(),

            ///color: Colors.grey
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
