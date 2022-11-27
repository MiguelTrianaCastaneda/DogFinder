import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/ui/components/template/textfield_login.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_view.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_header_view.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_rememberforgot_view.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_signin_view.dart';
import 'package:flutter/material.dart';

class LoginFormView extends StatelessWidget {
  const LoginFormView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Form(
      key: formKey,
      child: Positioned(
        top: 251,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          width: MediaQuery.of(context).size.width * 0.953,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              color: AppColor.kAppBackground,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeaderView(),
              TextFieldLogin(
                textEditingController: emailController,
                validator: validateEmail,
                hintextvalue: 'email@email.com',
                textlabel: 'Email',
                topSpace: 0,
              ),
              TextFieldLogin(
                textEditingController: passwordController,
                validator: validatePassword,
                textlabel: 'Password',
                topSpace: 1,
              ),
              const LoginRememberForgotView(),
              LoginSignInView(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  String? validatePassword(String? value) {
    if (value!.length < 9) {
      return 'Enter Valid Password';
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }
}
