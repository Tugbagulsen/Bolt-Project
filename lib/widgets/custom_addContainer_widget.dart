

import 'package:boltproject/constants/color_constant.dart';
import 'package:flutter/material.dart';

class CustomaddContainer extends StatelessWidget {
  const CustomaddContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 25),
          height: 64,
          width: 65,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            children: const [
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: ColorConstants.secondaryColor,
                  size: 40,
                ),
                onPressed: null,
              ),
              Text(
                'Ekle',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
