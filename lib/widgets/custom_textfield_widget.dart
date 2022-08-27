import 'package:boltproject/constants/color_constant.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  final String hintText;
  TextInputType? textinputType;
  Widget? prefixIcon;
  bool obscureText;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.textinputType,
    this.prefixIcon,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      style: const TextStyle(),
      keyboardType: textinputType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixText: ' ',
        hintStyle: const TextStyle(color: Color.fromARGB(255, 116, 114, 114)),
        helperStyle: const TextStyle(color: ColorConstants.edgeColor),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide()),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorConstants.edgeColor),
        ),
      ),
    );
  }
}
