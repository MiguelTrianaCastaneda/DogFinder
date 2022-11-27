// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:dogfinder_app/ui/components/template/button_socialnetwork.dart';

class LoginSignInView extends StatelessWidget {
  const LoginSignInView({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 50.0),
          child: Row(
            children: [
              InkWell(
                onTap: onTap,
                child: Container(
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: AppColor.kAppColorButtons),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(68.0, 12.0, 12.0, 12.0),
                    child: Text(
                      "Sign in",
                      style: AppTheme.kStyleButtonLabel(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 90.0,
              ),
              const ButtonSocialNetwork(
                iconSocialNetwork: 'facebook.svg',
              ),
              const SizedBox(
                width: 8.0,
              ),
              const ButtonSocialNetwork(
                iconSocialNetwork: 'google.svg',
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40.0,
        ),
        RichText(
          text: TextSpan(
            text: 'Don\'t have and account? ',
            style: AppTheme.kStyleSignup(),
            children: const <TextSpan>[
              TextSpan(
                  text: 'Signup',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.kAppLetterSocialNetwork)),
              TextSpan(text: ' now'),
            ],
          ),
        )
      ],
    );
  }
}
