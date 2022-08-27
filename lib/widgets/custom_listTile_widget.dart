import 'package:boltproject/constants/color_constant.dart';
import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 26, color: ColorConstants.primaryColor),
      title: Text(
        text,
        style: const TextStyle(fontSize: 16, color: ColorConstants.primaryColor),
      ),
    );
  }
}
