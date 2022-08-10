// TODO Implement this library.
import 'package:flutter/material.dart';

class SizeConfig
{
  static double? height;
  static double? width;

  static void init(BuildContext context)
  {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    height = _height / 100;
    width = _width / 100;
  }
}