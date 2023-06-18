import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:themeswitcher/conf/values/color_constants.dart';

enum AppTheme {
  Light,
  Dark,
}

extension AppThemeExtension on AppTheme {
  ThemeData get themeData {
    switch (this) {
      case AppTheme.Light:
        return ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: MyColors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: MyColors.white,
            titleTextStyle: TextStyle(color: MyColors.black),
            iconTheme: IconThemeData(color: MyColors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        );
      case AppTheme.Dark:
        return ThemeData(
          brightness: Brightness.dark,
          dividerColor: MyColors.primaryA30,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: MyColors.black,
            actionsIconTheme: IconThemeData(color: MyColors.white),
            titleTextStyle: TextStyle(color: MyColors.white),
            iconTheme: IconThemeData(color: MyColors.black),
          ),
          scaffoldBackgroundColor: MyColors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        );
    }
  }

  SystemUiOverlayStyle get overlayStyle {
    switch (this) {
      case AppTheme.Light:
        return SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
          statusBarColor: MyColors.transparent,
          statusBarIconBrightness: Brightness.dark,
          //
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarColor: MyColors.white,
          systemNavigationBarDividerColor: MyColors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        );
      case AppTheme.Dark:
        return SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
          statusBarColor: MyColors.transparent,
          statusBarIconBrightness: Brightness.light,
          //
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarColor: MyColors.black,
          systemNavigationBarDividerColor: MyColors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        );
    }
  }
}
