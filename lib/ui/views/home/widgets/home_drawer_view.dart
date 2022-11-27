import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:dogfinder_app/ui/components/template/listtile_homedrawer.dart';
import 'package:flutter/material.dart';

class HomeDrawerView extends StatelessWidget {
  const HomeDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
                width: 200.0,
                height: 100.0,
                decoration: const BoxDecoration(
                    color: AppColor.kAppBackground,
                    image: DecorationImage(
                        image: AssetImage("assets/images/rsz_dogadoption.png"),
                        fit: BoxFit.scaleDown))),
          ),
          const ListTileHomeDrawer(
            titledrawer: "Donation",
            iconselected: "assets/icons/donation.svg",
          ),
          const ListTileHomeDrawer(
            titledrawer: "Add pet",
            iconselected: "assets/icons/add_pet.svg",
          ),
          const ListTileHomeDrawer(
            titledrawer: "Favorites",
            iconselected: "assets/icons/favorites.svg",
          ),
          const ListTileHomeDrawer(
            titledrawer: "Messages",
            iconselected: "assets/icons/message.svg",
          ),
          const ListTileHomeDrawer(
            titledrawer: "Profile",
            iconselected: "assets/icons/profile.svg",
          ),
        ],
      ),
    );
  }
}
