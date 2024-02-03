import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding(
      {super.key, this.v = 0.0, this.h = 14.0, required this.child});
  final double h, v;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: child,
        );
    }
}