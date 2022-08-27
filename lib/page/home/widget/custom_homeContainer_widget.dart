import 'package:flutter/material.dart';

class CustomHomeContainer extends StatelessWidget {
  final String text;
  final String imageText;
  const CustomHomeContainer({
    Key? key,
    required this.text,
    required this.imageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 65,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Image.asset(imageText),
        ),
        _sizedBoxH10,
        Text(
          text,
         
        ),
      ],
    );
  }

  Widget get _sizedBoxH10 => const SizedBox(height: 10);
}
