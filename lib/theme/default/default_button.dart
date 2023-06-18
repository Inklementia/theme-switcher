// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/enums/theme_colors_enum.dart';
import 'package:themeswitcher/conf/values/border_radius_constants.dart';
import 'package:themeswitcher/conf/values/duration_constants.dart';
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';
import 'package:themeswitcher/theme/text/text16/text_16_medium.dart';
import 'default_inkwell.dart';

class MyButton extends StatelessWidget {
  //
  final String label;
  final MyThemeColor color;

  final void Function()? onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final bool enable;

  MyButton.primary({
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.h32v16,
    //
    this.enable = true,
  }) : color = MyThemeColor.primary;

  MyButton.secondary({
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.enable = true,
  }) : color = MyThemeColor.secondary;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyInkWell(
        margin: margin,
        padding: padding,
        borderRadius: MyBorderRadius.allRounded10,
        onTap: enable ? onTap : null,
        color: enable ? color.color : color.disabledColor,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (iconLeft != null) ...[
                  iconLeft!,
                  SizedBox(width: 8),
                ],
                MyText16m(
                  label,
                  color: color,
                  isOverflow: true,
                ),
                if (iconRight != null) ...[
                  SizedBox(width: 8),
                  iconRight!,
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}
