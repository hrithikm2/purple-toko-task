import 'package:dio/dio.dart';

import '../constants/constants.dart';

class UserAuth {
  static Future<bool> api_LoginUserWithCredentials(
      String email, String pass) async {
    Response response;
    try {
      api_DIO.options.headers['Content-Type'] =
          "application/x-www-form-urlencoded";
      response = await api_DIO.post(
        "http://pt.frantic.in/RestApi/login_user",
        data: {'username': email, 'password': pass, 'usertype': "USER"},
      );
      if (response.statusCode == 200) {
        print(response.data['response_string']);
        if (response.data['response_string'] == "Login Success") {
          return true;
        } else {
          return false;
        }
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
