import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryColor = fromHex('#19A9FA');
  static Color blueGray100 = fromHex('#d5dbe6');

  static Color red600 = fromHex('#d04a37');

  static Color amber500 = fromHex('#f0bd0b');

  static Color blue500 = fromHex('#18a8f9');

  static Color green700 = fromHex('#379a27');

  static Color gray50 = fromHex('#f3f9ff');

  static Color indigo100 = fromHex('#bbc6d8');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray800 = fromHex('#353c58');

  static Color indigo50051 = fromHex('#513840d0');

  static Color blue5007f = fromHex('#7f18a8f9');

  static Color whiteA700 = fromHex('#ffffff');
  static Color whiteA800 = fromHex('#EEEEEE');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
