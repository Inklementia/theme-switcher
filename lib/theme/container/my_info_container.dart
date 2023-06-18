// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/values/border_radius_constants.dart';
import 'package:themeswitcher/conf/values/color_constants.dart';
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';
import 'package:themeswitcher/theme/default/default_inkwell.dart';

// Project imports:

class MyInfoContainer extends StatelessWidget {
  //
  final Widget child;
  final Color? color;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  final bool showBorder;
  final Color borderColor;

  final void Function()? onTap;

  MyInfoContainer({
    required this.child,
    this.color = MyColors.white,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.all16,
    //
    this.showBorder = false,
    this.borderColor = MyColors.neutral,
    //
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: onTap,
      color: color,
      child: child,
      margin: margin,
      padding: padding,
      borderRadius: MyBorderRadius.allRounded10,
      border: showBorder ? Border.all(color: borderColor) : null,
    );
  }
}
