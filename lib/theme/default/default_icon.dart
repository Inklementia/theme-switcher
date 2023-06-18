// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';

// Project imports:

class MyIcon extends StatelessWidget {
  //
  final Key? key;

  final String icon;

  final double size;
  final double? width;
  final double? height;

  final void Function()? onTap;

  final EdgeInsetsGeometry padding;

  const MyIcon({
    required this.icon,
    //
    this.key,
    //
    this.width,
    this.height,
    this.size = 24,
    //
    this.onTap,
    //
    this.padding = MyEdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          icon,
          width: width ?? size,
          height: height ?? size,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
