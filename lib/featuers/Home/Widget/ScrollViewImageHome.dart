import 'package:finalproject/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class ScrollViewImageHome extends StatefulWidget {
  const ScrollViewImageHome({Key? key}) : super(key: key);

  @override
  State<ScrollViewImageHome> createState() => _ScrollViewImageHomeState();
}

class _ScrollViewImageHomeState extends State<ScrollViewImageHome> {
  PageController _pageController = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      height: 190,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: PageView(
          reverse: true,
          allowImplicitScrolling: true,
          controller: _pageController,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(AssetsData.p1),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(AssetsData.p2),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(AssetsData.p3),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
