import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:purple_toko/routes/app_router.gr.dart';
import 'package:stacked/stacked.dart';

import '../../services/user_auth_service.dart';
import '../../utils/functions.dart';

class LoginScreenViewModel extends BaseViewModel {
  //Member Variables
  int groupValue = 0;
  bool isObscure = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  //Member Functions
  void init() {}

  void onRadioChanged(int? radioValue) {
    groupValue = radioValue ?? 0;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    isObscure = !isObscure;
    notifyListeners();
  }

  void onFbTapped(BuildContext context) {
    Functions.showSnackBar(context, "This should log the in user with FB");
  }

  void onGoogleTapped(BuildContext context) {
    Functions.showSnackBar(context, "This should log the in user with Google");
  }

  String? emailValidator(String? val) {
    if (val == null || val.isEmpty || val != "harpreetfrantic@gmail.com") {
      return "Invalid user email";
    } else if (groupValue == 1) {
      return "Invalid user type";
    } else {}
    return null;
  }

  String? passwordValidator(String? val) {
    if (val == null || val.isEmpty || val != "harry9654") {
      return "Invalid user password";
    } else if (groupValue == 1) {
      return "Invalid user type";
    } else {}
    return null;
  }

  Future<void> login(String email, String pass, BuildContext context) async {
    if (formKey.currentState?.validate() == true) {
      bool success = await UserAuth.api_LoginUserWithCredentials(email, pass);
      if (success) {
        context.router.pushAndPopUntil(const AllNearbyProductsRoute(),
            predicate: (rtr) => false);
      } else {
        Functions.showSnackBar(
            context, "Something went wrong, please try again!");
      }
    } else {}
  }
}
