import 'package:cor/core/colors_manager.dart';
import 'package:flutter/material.dart';

abstract class Style_Manager {
  static final TextStyle textStyle40w500 = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      color: Color_Manager.color_blue);

  static final TextStyle textStyle14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color_Manager.color_home,
  );

  static final TextStyle textStyle14 =
      TextStyle(color: Colors.white, fontSize: 20);

  static const TextStyle textStyle18w600 = TextStyle(
      fontSize: 18,
      color: Color_Manager.color_home,
      fontWeight: FontWeight.w600);
}
