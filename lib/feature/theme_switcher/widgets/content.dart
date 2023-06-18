import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themeswitcher/conf/values/strings_constants.dart';
import 'package:themeswitcher/core/navigator/routes_constants.dart';
import 'package:themeswitcher/core/root/injector.dart';
import 'package:themeswitcher/core/root/navigator_service.dart';
import 'package:themeswitcher/feature/theme_switcher/mobx/store.dart';
import 'package:themeswitcher/feature/theme_switcher/widgets/toggle/toggle.dart';
import 'package:themeswitcher/feature/theme_switcher/widgets/history/list.dart';
import 'package:themeswitcher/theme/default/default_button.dart';

class ThemeSwitcherContent extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<ThemeSwitcherStore>();

    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemeSwitcherToggle(),
            SizedBox(width: 32),
            MyButton.primary(
              label: MyStrings.readMore,
              onTap: () => injector<NavigatorService>().pushNamed(
                MyRoutes.text,
                arguments: store.isLight,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        ThemeSwicherHistoryList(),
      ],
    );
  }
}
