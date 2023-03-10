import 'package:flutter/material.dart';

int theme_ = 2;

class AppColors {
  //? ------------------------- BG Color -------------------------
  // static const Color _bgColor1 = Color(0xFF021827); // Dark Blue
  // Method
  // static Color bgColor() => _bgColor1;
  // static Color bgColor() => Colors.black;
  static Color get bgColor => Colors.white70;

  //? -------------------- Selected Option BG Color --------------------

  static Color get truthBG => lightBlue1;
  static Color get dareBG => peach2;

  static const Color lightBlue1 = Color(0xff5ec6fe);
  static const Color lightBlue2 = Color(0xff57adfc);
  static const Color blue1 = Color(0xff218ffc);
  static const Color blue2 = Color(0xff0d67f7);
  static const Color blue3 = Color(0xff0a3e98);
  static const Color darkBlue = Color(0xff161b29);
  static const Color grey = Color(0xff525252);
  static const Color red = Color(0xffe22021);
  static const Color white = Color(0xfff2f4f6);
  static const Color peach = Color(0xfff47f80);
  static const Color peach2 = Color(0xfff25b5c);

  //? -------------------- Text Color --------------------
  static const Color textColor1 = Colors.white;
  static const Color textColor0 = Colors.black;
}
