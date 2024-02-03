import 'package:fashion_design/navigation_menu.dart';
import 'package:fashion_design/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Store',
      theme: themeData,
      home: const NavigationMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}


