import 'package:finalproject/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String hintText;
  String error;
  TextEditingController controller;

  TextInput(
      {super.key,
      required this.hintText,
      required this.error,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(right: 5, left: 15, top: 4, bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: Styles.textStyles14.copyWith(color: Colors.black),
        controller: controller,
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'Please Enter Your ${error}';
          }
          if (text.length < 10) {
            return 'Please Enter Right ${error}';
          }
          return null;
        },
        textAlign: TextAlign.left,
        maxLines: 1,
        minLines: 1,
        scrollPhysics:
            const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintStyle: Styles.textStyles18.copyWith(color: Colors.black45),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
