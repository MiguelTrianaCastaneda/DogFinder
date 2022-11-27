import 'package:dogfinder_app/models/dogbreeds_model.dart';
import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeBreedsMenuView extends StatelessWidget {
  const HomeBreedsMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dogbreeds.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 2.0),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: dogbreeds[index].status == false
                            ? Border.all(color: Colors.black12)
                            : Border.all(color: Colors.transparent),
                        color: dogbreeds[index].status == false
                            ? Colors.transparent
                            : AppColor.kAppColorTittle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          dogbreeds[index].namebreed,
                          style: dogbreeds[index].status == false
                              ? AppTheme.kStyleLabelButtonsMenu()
                              : AppTheme.kStyleLabelButtonsMenu(
                                  color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
