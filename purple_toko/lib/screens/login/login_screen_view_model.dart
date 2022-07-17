import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginScreenViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
}
