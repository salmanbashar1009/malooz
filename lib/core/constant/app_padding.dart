import 'package:flutter/material.dart';

class AppPadding {
  static const EdgeInsets padding16 = EdgeInsets.all(16);
  static const EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets vertical16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets paddingH16V8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  static EdgeInsets padding(double horizontal, double vertical) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}
