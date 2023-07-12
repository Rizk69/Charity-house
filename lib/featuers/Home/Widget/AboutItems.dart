import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/core/utilts/app_router.dart';
import 'package:finalproject/core/utilts/assets.dart';
import 'package:finalproject/featuers/Home/Widget/FollowUs.dart';
import 'package:finalproject/featuers/Home/Widget/ListsSetting.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutItems extends StatelessWidget {
  const AboutItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(3),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    showMyDialog(context);
                  },
                  child: ListsSetting(
                      textName: 'أهدافنا', imageName: AssetsData.iconsUser)),
              InkWell(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: ListsSetting(
                      textName: 'طلب مساعده', imageName: AssetsData.iconsUser)),
              InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KTeamPage);
                  },
                  child: ListsSetting(
                      textName: 'فريقنا', imageName: AssetsData.iconsUser)),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 280,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                width: MediaQuery.of(context).size.width / 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Image.asset(
                        AssetsData.logo,
                        height: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'نحن مستعدون لمساعدتكم دائما',
                        style: Styles.textStyles18.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22),
                      ),
                      Text(
                        'وسنكون دائما عند حسن ظنكم',
                        style: Styles.textStyles18.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22),
                      ),
                      Spacer(),
                      FollowUs()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 11,
                padding: EdgeInsets.all(15.0),
                child: Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          'تسجيل خروج',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showMyDialog(BuildContext context) {
  showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        alignment: Alignment.center,
        title: Image.asset(AssetsData.logoAbout, height: 100),
        content: Container(
          width: 300,
          child: Text(
            'بيت المال هو الذي يباشر الإشراف على إيرادات الدولة ونفقاتها وعلى مواردها العامة،وفق أحكام الشريعة الإسلامية.',
            style: Styles.textStyles18.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.all(15.0),
              child: Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'موافق',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'helvetica_neue_light',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      );
    },
  );
}

void showAlertDialog(BuildContext context) {
  TextEditingController _emailController = new TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final emailField = TextFormField(
        maxLines: 5,
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: 'أكتب...',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          hintStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      );

      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        content: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 4,
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFFFFFF),
            borderRadius: new BorderRadius.all(new Radius.circular(20)),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              emailField,
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  padding: EdgeInsets.all(15.0),
                  child: Material(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'أرسال',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'helvetica_neue_light',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
