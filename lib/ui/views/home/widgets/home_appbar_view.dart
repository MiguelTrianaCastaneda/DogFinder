import 'package:dogfinder_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBarView extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kAppBackground,
      elevation: 0.0,
      title: null, // 2
      centerTitle: true,
      leading: Builder(
        builder: ((context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset("assets/icons/drawable.svg",
                width: 20.0,
                height: 20.0,
                color: AppColor.kAppColorButtons,
                fit: BoxFit.scaleDown))),
      ),
      actions: <Widget>[
        SvgPicture.asset("assets/icons/pet.svg",
            width: 30.0,
            height: 30.0,
            color: AppColor.kAppColorButtons,
            fit: BoxFit.scaleDown),
        const SizedBox(
          width: 3.0,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 5.0),
          child: CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/d8/8f/4b/d88f4be006d789457f05093821087368.jpg'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
