import 'package:finalproject/core/model/Auth.dart';
import 'package:finalproject/core/utilts/ApiService.dart';
import 'package:finalproject/core/utilts/SharedPreference.dart';
import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/core/utilts/app_router.dart';
import 'package:finalproject/core/utilts/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static const String routeLogin = 'Login';

  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool securpassword = true;

    return Scaffold(
      appBar: AppBar(
          leading: Text(''),
          backgroundColor: Colors.green[700],
          centerTitle: true,
          title: const Text(
            'Sign In',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 9.9,
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[700],
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 1),
                          spreadRadius: 2,
                          blurRadius: 15)
                    ]),
                height: MediaQuery.of(context).size.height / 1.5,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    AssetsData.logo,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                    height: 130,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Welcome My Dear !',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0XFF282828), width: 1),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              height: 60,
                              child: Row(
                                children: [
                                  const Icon(Icons.email),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: TextFormField(
                                        controller: email,
                                        onChanged: (data) {},
                                        style: Styles.textStyles14
                                            .copyWith(color: Colors.black),
                                        validator: (text) {
                                          if (text == null ||
                                              text.trim().isEmpty) {
                                            return 'Please Enter Your Email';
                                          }
                                        },
                                        maxLines: 1,
                                        minLines: 1,
                                        scrollPhysics: const ScrollPhysics(
                                            parent:
                                                AlwaysScrollableScrollPhysics()),
                                        decoration: const InputDecoration(
                                          hintStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black38),
                                          hintText: ' Email',
                                          border: InputBorder.none,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              color: const Color(0XFFC4C4C4),
                              height: 2,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              height: 60,
                              child: Row(
                                children: [
                                  const Icon(Icons.password),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: TextFormField(
                                        controller: password,
                                        style: Styles.textStyles14
                                            .copyWith(color: Colors.black),
                                        obscureText: securpassword,
                                        validator: (text) {
                                          if (text == null ||
                                              text.trim().isEmpty) {
                                            return 'Please Enter Your Password';
                                          }
                                          if (text.length < 5) {
                                            return 'Please Enter Right Password';
                                          }
                                          return null;
                                        },
                                        maxLines: 1,
                                        minLines: 1,
                                        scrollPhysics: const ScrollPhysics(
                                            parent:
                                                AlwaysScrollableScrollPhysics()),
                                        decoration: InputDecoration(
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                securpassword = !securpassword;
                                              });
                                            },
                                            child: Icon(securpassword
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                          ),
                                          hintStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black38),
                                          hintText: 'Password',
                                          border: InputBorder.none,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                        ),
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            var auth = await ApiService.signIn(
                                email: email.text.toString(),
                                password: password.text.toString());
                            if (auth?.message == 'Success!!') {
                              Preferences.instance.setUser(auth!);
                              goToHome();
                              Future.delayed(
                                Duration(seconds: 2),
                                () async {
                                  print('sssssssssssss');
                                  Auth model =
                                      await Preferences.instance.getUserModel();
                                  print(model.toJson());
                                },
                              );
                            }
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.green,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KrouteRegister1);
                    },
                    child: Text(
                      'Sign Up  !',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  void goToHome() {
    GoRouter.of(context).push(AppRouter.KHomeView);
  }
}
