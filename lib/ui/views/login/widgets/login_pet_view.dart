import 'package:flutter/material.dart';

class LoginPetView extends StatelessWidget {
  const LoginPetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 70,
        child: Container(
          width: 250,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/puppy.png"),
            fit: BoxFit.cover,
          )),
        ));
  }
}
