// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/conf/values/color_constants.dart';
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';
import 'package:themeswitcher/theme/default/default_container.dart';

class BottomButtonContainer extends StatelessWidget {
  //
  final Widget child;

  final EdgeInsetsGeometry padding;

  BottomButtonContainer({
    required this.child,
    this.padding = MyEdgeInsets.all16,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: MyColors.white,
      padding: padding,
      child: SafeArea(top: false, child: child),
      border: Border(
        top: BorderSide(
          width: 1,
          color: MyColors.neutral,
        ),
      ),
    );
  }
}
