import 'package:finalproject/core/model/datamodel.dart';
import 'package:finalproject/core/utilts/ApiService.dart';
import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/featuers/Home/Widget/CusttomItemsListView.dart';
import 'package:finalproject/featuers/Home/Widget/ScrollViewImageHome.dart';
import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ScrollViewImageHome(),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الاخبار',
                  style: Styles.textStyles18.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            FutureBuilder<DataModelNews>(
                future: ApiService.getDataNews(),
                builder: (buildContext, snapShot) {
                  if (snapShot.hasError) {
                    return Text(' error: ${snapShot.error}',
                        style: TextStyle(color: Colors.white));
                  } else if (snapShot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(color: Colors.green));
                  } else {
                    var data = snapShot.data;

                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data?.news?.length,
                          itemBuilder: (_, index) {
                            return CustomItemListNewsView(
                                news: data!.news![index]);
                          }),
                    );
                  }
                }),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'البرامج',
                  style: Styles.textStyles18.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )),
            SizedBox(
              height: 15,
            ),
            FutureBuilder<ModelsPrograms>(
                future: ApiService.getDataPrograms(),
                builder: (buildContext, snapShot) {
                  if (snapShot.hasError) {
                    return Text(' error: ${snapShot.error}',
                        style: TextStyle(color: Colors.white));
                  } else if (snapShot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(color: Colors.green));
                  } else {
                    var data = snapShot.data;

                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data?.programs?.length,
                          itemBuilder: (_, index) {
                            return CustomItemListProgramsView(
                                programs: data!.programs![index]);
                          }),
                    );
                  }
                }),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
