import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeaderView extends StatelessWidget {
  const LoginHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 33.0),
            child: Text(
              "Let's start the fun!!!",
              style: AppTheme.kStyleTittle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33.0, left: 345.0),
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.kAppColorButtons,
              ),
              child: SvgPicture.asset("assets/icons/pet.svg",
                  width: 30.0,
                  height: 30.0,
                  color: Colors.white,
                  fit: BoxFit.scaleDown),
            ),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 53.0, left: 25.0),
        child: Text(
          "Sign to continue",
          style: AppTheme.kStyleSubTittle(),
        ),
      ),
    ]);
  }
}
