import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final String text;
  final int fontSize;
  final FontWeight fontWeight;
  const CustomPadding({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: fontWeight),
      ),
    );
  }
}
