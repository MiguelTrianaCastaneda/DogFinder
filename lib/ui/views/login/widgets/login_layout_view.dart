import 'package:dogfinder_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class LoginLayoutView extends StatelessWidget {
  const LoginLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: AppColor.kAppBackgroundDog,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            )),
      ),
    );
  }
}
