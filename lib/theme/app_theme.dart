import 'package:dogfinder_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static TextStyle kStyleTittle({Color color = AppColor.kAppColorTittle}) {
    return TextStyle(fontSize: 18.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleTittleHome({Color color = AppColor.kAppColorTittle}) {
    return TextStyle(fontSize: 15.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleSubTittle(
      {Color color = AppColor.kAppColorSubTittle}) {
    return TextStyle(fontSize: 14.0, color: color);
  }

  static TextStyle kStyleSubTittleHome(
      {Color color = AppColor.kAppColorSubTittle}) {
    return TextStyle(fontSize: 13.0, color: color);
  }

  static TextStyle kStyleDrawerLabels({Color color = Colors.black54}) {
    return TextStyle(fontSize: 14.0, color: color);
  }

  static TextStyle kStyleLoginLabels({Color color = Colors.black54}) {
    return TextStyle(fontSize: 12.0, color: color);
  }

  static TextStyle kStyleRememberLabel({Color color = Colors.black26}) {
    return TextStyle(fontSize: 11.0, color: color);
  }

  static TextStyle kStyleForgotLabel(
      {Color color = AppColor.kAppColorForgotLabel}) {
    return TextStyle(fontSize: 11.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleButtonLabel({Color color = Colors.white}) {
    return TextStyle(fontSize: 12.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleSignup({Color color = Colors.black26}) {
    return TextStyle(fontSize: 14.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleLabelSearch(
      {Color color = AppColor.kAppBackgroudLabelSearch}) {
    return TextStyle(fontSize: 12.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle kStyleLabelButtonsMenu(
      {Color color = AppColor.kAppBackgroudLabelSearch}) {
    return TextStyle(fontSize: 9.0, color: color, fontWeight: FontWeight.bold);
  }
}
