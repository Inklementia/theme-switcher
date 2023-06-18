// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';

class MyGestureDetector extends StatelessWidget {
  //
  final Widget child;

  final EdgeInsets padding;

  final void Function()? onTap;
  final void Function()? onDoubleTap;
  final void Function()? onLongPress;
  final HitTestBehavior behavior;

  MyGestureDetector({
    required this.child,
    //
    this.padding = MyEdgeInsets.zero,
    //
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.behavior = HitTestBehavior.translucent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: behavior,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Padding(
        child: child,
        padding: padding,
      ),
    );
  }
}
