import 'package:flutter/material.dart';

class CustomCenter extends StatelessWidget {
  final Widget widget;
  final double heightFactor;
  const CustomCenter({
    Key? key,
    required this.widget,
    required this.heightFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: heightFactor,
      child: widget,
    );
  }
}
