// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:

// Project imports:
import 'package:themeswitcher/conf/values/strings_constants.dart';
import 'package:themeswitcher/feature/theme_switcher/mobx/store.dart';
import 'package:themeswitcher/feature/theme_switcher/widgets/content.dart';
import 'package:themeswitcher/theme/default/default_app_bar.dart';

class ThemeSwitcherScreen extends StatefulWidget {
  //
  @override
  _ThemeSwitcherScreenState createState() => _ThemeSwitcherScreenState();
}

class _ThemeSwitcherScreenState extends State<ThemeSwitcherScreen> {
  //
  final store = ThemeSwitcherStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: MyStrings.appName,
        canPop: false,
      ),
      body: ThemeSwitcherContent(),
    );
  }
}
