import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth, screenHeight, defultSize;
  static late Orientation orientation;
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defultSize = orientation == Orientation.landscape
        ? screenHeight * .024
        : screenWidth * .024;
    // print('this is the default size $defultSize');
    // print(SizeConfig.defultSize * 4);
  }
}
