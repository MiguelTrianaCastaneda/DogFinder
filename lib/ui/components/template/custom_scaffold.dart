import 'package:dogfinder_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key, this.appbar, this.body, this.drawer})
      : super(key: key);

  final Widget? body;
  final PreferredSizeWidget? appbar;
  final Widget? drawer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      appBar: appbar,
      drawer: drawer,
      body: body,
    );
  }
}
