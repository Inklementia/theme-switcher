// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/enums/theme_colors_enum.dart';
import 'package:themeswitcher/theme/default/default_text.dart';

class MyText20b extends StatelessWidget {
  //
  final String data;

  final int height;

  final MyThemeColor? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final TextDecoration decoration;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  MyText20b(
    this.data, {
    this.height = 24,
    //
    this.color,
    //
    this.maxLines,
    this.textAlign,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    this.toLowerCase = false,
    this.capitalize = false,
    //
    this.decoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 20,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      decoration: decoration,
      capitalize: capitalize,
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.bold,
    );
  }
}
