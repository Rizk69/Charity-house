import 'package:finalproject/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String iconPath;
  String text;

  Header({required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 25,
          height: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: Styles.textStyles18
              .copyWith(color: Colors.black, fontWeight: FontWeight.w200),
        )
      ],
    );
  }
}
