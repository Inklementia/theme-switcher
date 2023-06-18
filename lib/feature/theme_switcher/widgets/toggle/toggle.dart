import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:themeswitcher/feature/theme_switcher/mobx/store.dart';
import 'package:themeswitcher/theme/default/default_cupertino_toggle.dart';

class ThemeSwitcherToggle extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<ThemeSwitcherStore>();

    return Observer(
      builder: (_) => MyCupertinoToggle(
        isActive: store.isLight,
        onChanged: store.onChanged,
      ),
    );
  }
}
