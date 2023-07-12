import 'package:finalproject/core/model/datamodel.dart';
import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomItemListNewsView extends StatelessWidget {
  CustomItemListNewsView({super.key, required this.news});

  News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KDetailsItemsNews, extra: news);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 3),
                blurRadius: 1,
                spreadRadius: 2,
              )
            ]),
        height: 180,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://charity-house.zezogomaa.repl.co/${news.imgPath!}',
                  fit: BoxFit.cover,
                  opacity: AlwaysStoppedAnimation(.9),
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100,
                  child: Text(news.title!.trimLeft().trim(),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Styles.textStyles18
                          .copyWith(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 120,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(news.description!.trim().trimLeft(),
                        style:
                            Styles.textStyles14.copyWith(color: Colors.black),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomItemListProgramsView extends StatelessWidget {
  CustomItemListProgramsView({super.key, required this.programs});

  Programs programs;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.KDetailsItemsPrograms, extra: programs);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 3),
                blurRadius: 1,
                spreadRadius: 2,
              )
            ]),
        height: 180,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://charity-house.zezogomaa.repl.co/${programs.imgPath!}',
                  fit: BoxFit.cover,
                  opacity: AlwaysStoppedAnimation(.9),
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100,
                  child: Text(programs.title!.trimLeft().trim(),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Styles.textStyles18
                          .copyWith(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 120,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(programs.description!.trim().trimLeft(),
                        style:
                            Styles.textStyles14.copyWith(color: Colors.black),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
