import 'package:finalproject/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class FollowUs extends StatelessWidget {
  const FollowUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.facebook),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.inestgram),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.snapshat),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.twitter),
                ),
              ],
            )
          ],
        ));
  }
}
