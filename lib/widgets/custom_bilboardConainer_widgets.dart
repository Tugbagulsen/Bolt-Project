import 'package:flutter/material.dart';

class CustomBilboardContainer extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final Widget widget;
  final double size;
  const CustomBilboardContainer({
    Key? key,
    required this.color,
    required this.width,
    required this.height,
    required this.widget,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: widget,
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.all(
          Radius.circular(size),
        ),
        color: color,
      ),
    );
  }
}
