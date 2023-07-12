import 'package:dio/dio.dart';
import 'package:finalproject/core/model/Auth.dart';
import 'package:finalproject/core/model/datamodel.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  static Future<Auth?> signIn(
      {required String email, required String password}) async {
    var dio = Dio();
    try {
      var response =
          await dio.post('https://charity-house.zezogomaa.repl.co/login',
              data: {"email": email, "password": password},
              options: Options(
                  contentType: 'application/json',
                  validateStatus: (status) {
                    return true;
                  }));
      print(response.data);
      return Auth.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }

  static Future<DataModelNews> getDataNews() async {
    var dio = Dio();

    var response = await dio.get('https://charity-house.zezogomaa.repl.co/news',
        options: Options(
            contentType: 'application/json',
            validateStatus: (status) {
              return true;
            }));

    return DataModelNews.fromJson(response.data);
  }

  static Future<ModelsPrograms> getDataPrograms() async {
    var dio = Dio();

    var response =
        await dio.get('https://charity-house.zezogomaa.repl.co/programs',
            options: Options(
                contentType: 'application/json',
                validateStatus: (status) {
                  return true;
                }));

    return ModelsPrograms.fromJson(response.data);
  }
}
// zezogomaa38@gmail.com
