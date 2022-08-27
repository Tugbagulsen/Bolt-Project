import 'package:boltproject/constants/color_constant.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imageText;
  final String text;

  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imageText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 178, 177, 177),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 1.0), // shadow direction: bottom right
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            imageText,
            height: 21,
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
              color: ColorConstants.edgeColor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ]),
      ),
    );
  }
}
