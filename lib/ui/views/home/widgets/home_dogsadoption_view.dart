import 'package:dogfinder_app/models/dogsadoption_model.dart';
import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeDogsAdoptionView extends StatelessWidget {
  const HomeDogsAdoptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 196,
                childAspectRatio: 1,
                crossAxisSpacing: 11,
                mainAxisSpacing: 18),
            itemCount: dogsadoption.length,
            itemBuilder: (BuildContext ctx, index) {
              return Stack(
                children: [
                  Container(
                    height: 180.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(dogsadoption[index].imagedog),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 160.0,
                    left: 5.0,
                    child: Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.kAppColorButtons,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${dogsadoption[index].namedog} (${dogsadoption[index].breed})",
                            style: AppTheme.kStyleLabelButtonsMenu(
                                color: Colors.black54),
                          ),
                        )),
                  ),
                  Positioned(
                    top: 4.0,
                    left: 145.0,
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.greenAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${dogsadoption[index].age} Yeards",
                            style: AppTheme.kStyleLabelButtonsMenu(
                                color: Colors.black54),
                          ),
                        )),
                  ),
                  Positioned(
                    top: 10.0,
                    child: Icon(
                      dogsadoption[index].sex == "Male"
                          ? Icons.male
                          : Icons.female,
                      color: dogsadoption[index].sex == "Male"
                          ? Colors.blue
                          : Colors.pink,
                      size: 30.0,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
