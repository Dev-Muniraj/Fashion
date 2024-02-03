import 'package:fashion_design/utils/theme/custom_theme/appbar_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/chip_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/drawer_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/input_decoration_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/outline_border_theme.dart';
import 'package:fashion_design/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  fontFamily: "Lato",
  primaryColor: const Color(0xFFC5E1A5),
  brightness: Brightness.light,
  chipTheme: chipThemeData,
  textTheme: textTheme,
  drawerTheme: drawerThemeData,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: appBarTheme,
  elevatedButtonTheme: elevatedButtonThemeData,
  outlinedButtonTheme: outlinedButtonThemeData,
  inputDecorationTheme: inputDecorationTheme,
);