import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTileHomeDrawer extends StatelessWidget {
  const ListTileHomeDrawer({super.key, this.titledrawer, this.iconselected});
  final String? titledrawer;
  final String? iconselected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(iconselected!,
          width: 30.0,
          height: 30.0,
          color: AppColor.kAppColorButtons,
          fit: BoxFit.scaleDown),
      trailing: SvgPicture.asset("assets/icons/arrow_right.svg",
          width: 30.0,
          height: 30.0,
          color: AppColor.kAppColorButtons,
          fit: BoxFit.scaleDown),
      title: Text(
        titledrawer!,
        style: AppTheme.kStyleDrawerLabels(),
      ),
    );
  }
}
