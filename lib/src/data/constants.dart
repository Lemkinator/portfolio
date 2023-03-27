import 'package:flutter/material.dart';
import '../localization.dart';

enum ColorSeed {
  baseColor(Color(0xff6750a4)),
  indigo(Colors.indigo),
  blue(Colors.blue),
  teal(Colors.teal),
  green(Colors.green),
  yellow(Colors.yellow),
  orange(Colors.orange),
  deepOrange(Colors.deepOrange),
  pink(Colors.pink);

  const ColorSeed(this.color);

  String localizedLabel() {
    switch (this) {
      case ColorSeed.baseColor:
        return S.current.colorBaseline;
      case ColorSeed.indigo:
        return S.current.colorIndigo;
      case ColorSeed.blue:
        return S.current.colorBlue;
      case ColorSeed.teal:
        return S.current.colorTeal;
      case ColorSeed.green:
        return S.current.colorGreen;
      case ColorSeed.yellow:
        return S.current.colorYellow;
      case ColorSeed.orange:
        return S.current.colorOrange;
      case ColorSeed.deepOrange:
        return S.current.colorDeepOrange;
      case ColorSeed.pink:
        return S.current.colorPink;
    }
  }
  final Color color;
}
