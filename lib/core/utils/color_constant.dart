import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color gray5001 = fromHex('#f8f9fa');

  static Color black900A2 = fromHex('#a2000000');

  static Color gray400 = fromHex('#c4c4c4');

  static Color black900E5 = fromHex('#e5000000');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueA700 = fromHex('#0061ff');

  static Color redA200 = fromHex('#ff4b4b');

  static Color gray50 = fromHex('#f9fbff');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#363853');

  static Color blueGray900 = fromHex('#262b35');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11555555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
