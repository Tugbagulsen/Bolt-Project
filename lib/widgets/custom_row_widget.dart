import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final IconData icon;
  final Widget text;
  final double size;
  final Color color;
  final double sizeWidth;

  const CustomRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.size,
    required this.sizeWidth,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: size,
        ),
        const SizedBox(
          width: 12,
        ),
        SizedBox(
          width: sizeWidth,
        ),
        text,
      ],
    );
  }
}
