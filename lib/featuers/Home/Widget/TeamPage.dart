import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/core/utilts/assets.dart';
import 'package:finalproject/featuers/Home/Widget/FollowUs.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فريقنا'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customItems(context,
                      image: AssetsData.amr,
                      name: 'عمرو عبده',
                      job: 'فرونت اند'),
                  SizedBox(
                    width: 15,
                  ),
                  customItems(context,
                      image: AssetsData.bably,
                      name: 'محمد حلمي',
                      job: 'فرونت اند'),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customItems(context,
                      image: AssetsData.abdlhady,
                      name: 'محمد عبدالهادي',
                      job: 'باك اند'),
                  SizedBox(
                    width: 15,
                  ),
                  customItems(context,
                      image: AssetsData.zyad,
                      name: 'زياد شاهين',
                      job: 'باك اند'),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              customItems(context,
                  image: AssetsData.rizk, name: 'محمد رزق', job: 'فلاتر'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customItems(BuildContext context,
    {required String image, required String name, required String job}) {
  return Container(
    height: 280,
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
    width: MediaQuery.of(context).size.width / 2.3,
    child: Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: 120,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: Styles.textStyles18.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            job,
            style: Styles.textStyles18.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(AssetsData.facebook, height: 25),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.inestgram, height: 25)),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetsData.twitter, height: 25)),
            ],
          )
        ],
      ),
    ),
  );
}
