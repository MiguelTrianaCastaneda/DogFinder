import 'package:dogfinder_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonSocialNetwork extends StatelessWidget {
  const ButtonSocialNetwork({super.key, this.iconSocialNetwork});

  final String? iconSocialNetwork;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.kAppBackgroudSocialRed,
      ),
      child: SvgPicture.asset("assets/icons/${iconSocialNetwork!}",
          width: 15.0,
          height: 15.0,
          color: AppColor.kAppLetterSocialNetwork,
          fit: BoxFit.scaleDown),
    );
  }
}
