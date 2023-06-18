// Flutter imports:
import 'package:flutter/material.dart';

class MediaHelper {
  //
  static late Size size;

  static late double width;
  static late double height;
  static late double top, bottom, devicePixelRatio, vertical;

  static late double screenHeight;

  static Size? appBarSize;

  static init(BuildContext context) {
    final media = MediaQuery.of(context);

    size = media.size;
    width = size.width;
    height = size.height;
    top = media.viewPadding.top;
    bottom = media.viewPadding.bottom;
    devicePixelRatio = media.devicePixelRatio;
    vertical = media.viewPadding.vertical;
    appBarSize = AppBar().preferredSize;

    screenHeight = height - top - appBarSize!.height;
  }

  static double keybord(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  static bool isKeyboardVisible(BuildContext context) {
    return keybord(context) != 0;
  }
}
