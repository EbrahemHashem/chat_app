// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key, this.hintText, this.onChanged, required this.obscureText});
  String? hintText;
  Function(String)? onChanged;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required ';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
