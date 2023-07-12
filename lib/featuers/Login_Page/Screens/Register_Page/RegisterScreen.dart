import 'package:finalproject/core/utilts/app_router.dart';
import 'package:finalproject/core/utilts/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Login/Login_Screen.dart';
import '../../Widget/Buttom.dart';
import '../../Widget/Headar Text Field.dart';
import '../../Widget/Text Input.dart';

class RegisterScreen1 extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RegisterScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    var firstName = TextEditingController();
    var email = TextEditingController();
    var phoneNumber = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KSplash);
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AssetsData.logo,
                width: 154,
                height: 154,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Header(
                        iconPath: AssetsData.iconsUser,
                        text: 'UserName',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: 'User Name',
                            error: 'User Name',
                            controller: firstName,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Header(
                            iconPath: AssetsData.iconsEmail, text: 'Email'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: 'Please enter your email',
                            error: 'Email',
                            controller: email,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Header(
                            iconPath: AssetsData.iconsAdress, text: 'Address'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: 'Please Enter Your Address',
                            error: 'phoneNumber',
                            controller: phoneNumber,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Header(
                            iconPath: AssetsData.iconsPhone, text: 'Phone'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: '+966 | phone number',
                            error: 'phoneNumber',
                            controller: phoneNumber,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Header(
                            iconPath: AssetsData.iconsPassword,
                            text: 'Password'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: 'Please Enter Your Password',
                            error: 'phoneNumber',
                            controller: phoneNumber,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Header(
                            iconPath: AssetsData.iconsConfirmPassword,
                            text: 'Confirm Password'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextInput(
                            hintText: 'Please Confirm Password',
                            error: 'phoneNumber',
                            controller: phoneNumber,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Buttoms(
                            namedButtom: 'Back',
                            color: const Color(0XFF143360),
                            callBack: () {
                              GoRouter.of(context).push(AppRouter.KrouteLogin);
                            },
                          ),
                          Buttoms(
                            namedButtom: 'Confirm',
                            color: Colors.green.shade700,
                            callBack: () {
                              GoRouter.of(context).push(AppRouter.KHomeView);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
