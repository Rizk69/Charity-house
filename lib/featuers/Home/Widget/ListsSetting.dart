import 'package:finalproject/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

class ListsSetting extends StatelessWidget {
  String imageName;
  String textName;

  ListsSetting({Key? key, required this.textName, required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10, top: 15),
          child: Row(
            children: [
              Spacer(),
              Text(textName,
                  style: Styles.textStyles18
                      .copyWith(color: Colors.black, fontSize: 20)),
              const SizedBox(
                width: 10,
              ),
              Icon(Icons.label_important_outline),
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 2,
          color: Color(0XFFD8D8D8),
        ),
      ],
    );
  }
}
