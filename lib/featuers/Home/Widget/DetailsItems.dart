import 'package:finalproject/core/model/datamodel.dart';
import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/featuers/Login_Page/Widget/Buttom.dart';
import 'package:flutter/material.dart';

class DetailsItemsNews extends StatelessWidget {
  DetailsItemsNews(this.news, {super.key});

  News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'تفاصيل التبرع',
          style: Styles.textStyles18.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://charity-house.zezogomaa.repl.co/${news.imgPath!}',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(news.title!.trimLeft().trim(),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Styles.textStyles18.copyWith(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                news.description!.trim().trimLeft(),
                style: Styles.textStyles18.copyWith(
                    color: Colors.black87,
                    fontSize: 20,
                    overflow: TextOverflow.visible),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Buttoms(
                namedButtom: 'تبرع الان',
                color: Colors.green.shade800,
                callBack: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsItemsPrograms extends StatelessWidget {
  DetailsItemsPrograms(this.programs, {super.key});

  Programs programs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'تفاصيل التبرع',
          style: Styles.textStyles18.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://charity-house.zezogomaa.repl.co/${programs.imgPath!}',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(programs.title!.trimLeft().trim(),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Styles.textStyles18.copyWith(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                programs.description!.trim().trimLeft(),
                style: Styles.textStyles18.copyWith(
                    color: Colors.black87,
                    fontSize: 20,
                    overflow: TextOverflow.visible),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Buttoms(
                  namedButtom: '${programs.price?.trim().toLowerCase()}  ',
                  color: Colors.green.shade800,
                  callBack: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
