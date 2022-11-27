import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 40.0,
            decoration: BoxDecoration(
                color: AppColor.kAppBackgroudSearch,
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/icons/search.svg",
                  width: 20.0,
                  height: 20.0,
                  color: AppColor.kAppBackgroudLabelSearch,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Search",
                  style: AppTheme.kStyleLabelSearch(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
