import 'package:flutter/material.dart';

class CustomTFF extends StatelessWidget {
  const CustomTFF(
      {super.key,
      required this.hintText,
      required this.kbType,
      required this.controller});

  final String hintText;
  final TextInputType kbType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: kbType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.grey),
        ),
      ),
    );
  }
}
