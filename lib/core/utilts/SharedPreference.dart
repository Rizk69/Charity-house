import 'dart:convert';

import 'package:finalproject/core/model/Auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences instance = Preferences._internal();

  Preferences._internal();

  factory Preferences() => instance;

  Future<void> setUser(Auth authModel) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(
      'user',
      jsonEncode(
        Auth.fromJson(
          authModel.toJson(),
        ),
      ),
    );
  }

  Future<Auth> getUserModel() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? jsonData = preferences.getString('user');
    Auth authModel;
    if (jsonData != null) {
      authModel = Auth.fromJson(jsonDecode(jsonData));
      // userModel.data?.isLoggedIn = true;
    } else {
      authModel = Auth();
    }
    return authModel;
  }
}
