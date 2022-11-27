import 'package:dogfinder_app/models/dogbreeds_model.dart';
import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:dogfinder_app/ui/components/template/custom_scaffold.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_appbar_view.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_breedsmenu_view.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_dogsadoption_view.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_drawer_view.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_header_view.dart';
import 'package:dogfinder_app/ui/views/home/widgets/home_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        drawer: const HomeDrawerView(),
        appbar: const HomeAppBarView(),
        body: Column(
          children: const [
            HomeHeaderView(),
            HomeSearchView(),
            HomeBreedsMenuView(),
            HomeDogsAdoptionView()
          ],
        ));
  }
}
