import 'package:finalproject/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.bottomRight,
      required this.topLeft,
      required this.bottomLeft,
      required this.topRight,
      required this.colorText,
      this.onPressed})
      : super(key: key);
  final Color backgroundColor;
  final Color colorText;

  final String text;
  final double bottomRight;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyles14.copyWith(
              fontSize: 17, color: colorText, fontWeight: FontWeight.w600),
        ),
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(bottomRight as double),
                    topLeft: Radius.circular(topLeft),
                    bottomLeft: Radius.circular(bottomLeft),
                    topRight: Radius.circular(topRight)))),
      ),
    );
  }
}
