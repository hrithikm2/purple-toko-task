import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:purple_toko/components/app_text_field.dart';
import 'package:purple_toko/constants/app_colors.dart';
import 'package:purple_toko/utils/functions.dart';
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
                padding: const EdgeInsets.all(24),
                children: [
                  const AppLogo(
                    isSmall: false,
                  ),
                  32.heightBox,
                  AppTextField(
                    validator: (val) => model.emailValidator(val),
                    controller: model.emailController,
                    hint: "Email",
                  ),
                  16.heightBox,
                  AppTextField(
                    validator: (val) => model.passwordValidator(val),
                    obscure: model.isObscure,
                    suffixicon: IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () => model.togglePasswordVisibility(),
                    ),
                    controller: model.passwordController,
                    hint: "Password",
                  ),
                  16.heightBox,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio<int>(
                          value: 0,
                          groupValue: model.groupValue,
                          onChanged: model.onRadioChanged),
                      5.widthBox,
                      "User".text.make(),
                      Radio<int>(
                          value: 1,
                          groupValue: model.groupValue,
                          onChanged: model.onRadioChanged),
                      5.widthBox,
                      "Business".text.make(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: "Forgot Password?"
                            .text
                            .bold
                            .color(Colors.black)
                            .make(),
                        onPressed: () {
                          Functions.showSnackBar(context,
                              "A reset link has been sent to your email");
                        },
                      ),
                    ],
                  ),
                  16.heightBox,
                  MaterialButton(
                    padding: const EdgeInsets.all(16),
                    color: AppColors.secondaryColor,
                    shape: const StadiumBorder(),
                    onPressed: () => model.login(model.emailController.text,
                        model.passwordController.text, context),
                    child: "Log In".text.white.make(),
                  ),
                  16.heightBox,
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: const Divider(
                                thickness: 1,
                              )),
                        ),
                        "or sign in using".text.make(),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: const Divider(
                                thickness: 1,
                              )),
                        ),
                      ],
                    ),
                  ),
                  16.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: GoogleAuthButton(
                          onPressed: () {
                            model.onGoogleTapped(context);
                          },
                          text: 'Signin with Google',
                          style: const AuthButtonStyle(
                            textStyle: TextStyle(color: Colors.black),
                            buttonColor: Colors.white,
                            borderRadius: 5,
                            iconSize: 22,
                            borderWidth: 0.3,
                            borderColor: Colors.black,
                            buttonType: AuthButtonType.icon,
                            iconType: AuthIconType.secondary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      FacebookAuthButton(
                        onPressed: () {
                          print('tapped');
                          model.onFbTapped(context);
                        },
                        text: 'Signin with Facebook',
                        style: const AuthButtonStyle(
                          textStyle: TextStyle(color: Colors.black),
                          borderRadius: 5,
                          iconSize: 22,
                          borderWidth: 0.3,
                          borderColor: Colors.black,
                          buttonType: AuthButtonType.icon,
                          iconType: AuthIconType.secondary,
                        ),
                      )
                    ],
                  ),
                  32.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        onPressed: () {
                          Functions.showSnackBar(
                              context, "This should redirect to sign up page");
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
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
