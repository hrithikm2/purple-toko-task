import 'package:flutter/material.dart';
import 'package:purple_toko/components/app_text_field.dart';
import 'package:stacked/stacked.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../components/app_logo.dart';
import 'login_screen_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
        viewModelBuilder: () => LoginScreenViewModel(),
        builder: (context, model, child) => _body(context, model));
  }

  Widget _body(BuildContext context, LoginScreenViewModel model) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Form(
              key: model.formKey,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(16),
                children: [
                  const AppLogo(),
                  32.heightBox,
                  AppTextField(
                    controller: model.emailController,
                    hint: "Email",
                  ),
                  16.heightBox,
                  AppTextField(
                    controller: model.passwordController,
                    hint: "Password",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
