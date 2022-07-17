import 'package:dio/dio.dart';

import '../constants/constants.dart';

class UserAuth {
  static Future<bool> api_LoginUserWithCredentials(
      String email, String pass) async {
    Response response;
    try {
      response = await api_DIO.post(
        "http://pt.frantic.in/RestApi/login_user",
        data: {
          'email': email,
          'password': pass,
        },
      );
      if (response.statusCode == 200) {
        print(response.data['response_string']);
        return true;
      } else if (response.data['err'] == 404) {
        return false;
      } else {
        return false;
      }
    } on Exception {
      return false;
    }
  }
}
