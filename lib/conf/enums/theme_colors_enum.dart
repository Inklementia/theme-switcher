// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/values/color_constants.dart';

enum MyThemeColor {
  primary,
  secondary,
  tertiary,
  //
  white,
  black,
  neutral,
  neutralVarient,
  //
  warning,
  error,
}

extension MyThemeColorExtension on MyThemeColor {
  //
  Color get color {
    switch (this) {
      case MyThemeColor.secondary:
        return MyColors.secondary;

      case MyThemeColor.tertiary:
        return MyColors.tertiary;

      case MyThemeColor.white:
        return MyColors.white;

      case MyThemeColor.black:
        return MyColors.black;

      case MyThemeColor.neutral:
        return MyColors.neutral;

      case MyThemeColor.neutralVarient:
        return MyColors.neutralVarient;

      case MyThemeColor.warning:
        return MyColors.warning;

      case MyThemeColor.error:
        return MyColors.error;

      default:
        return MyColors.primary;
    }
  }

  Color get disabledColor {
    switch (this) {
      case MyThemeColor.secondary:
        return MyColors.secondaryA50;

      case MyThemeColor.tertiary:
        return MyColors.tertiaryA50;

      case MyThemeColor.white:
        return MyColors.whiteA50;

      case MyThemeColor.black:
        return MyColors.blackA50;

      case MyThemeColor.neutral:
        return MyColors.neutralA50;

      case MyThemeColor.neutralVarient:
        return MyColors.neutralVarientA50;

      case MyThemeColor.warning:
        return MyColors.warningA50;

      case MyThemeColor.error:
        return MyColors.errorA50;

      default:
        return MyColors.primaryA50;
    }
  }

  Color get textColor {
    switch (this) {
      case MyThemeColor.secondary:
        return MyColors.black;

      case MyThemeColor.tertiary:
        return MyColors.black;

      case MyThemeColor.white:
        return MyColors.black;

      case MyThemeColor.black:
        return MyColors.white;

      case MyThemeColor.neutral:
        return MyColors.black;

      case MyThemeColor.neutralVarient:
        return MyColors.black;

      case MyThemeColor.warning:
        return MyColors.black;

      case MyThemeColor.error:
        return MyColors.white;

      default:
        return MyColors.white;
    }
  }
}
