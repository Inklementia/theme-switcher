import 'package:flutter/material.dart';
import 'package:themeswitcher/theme/text/text12/text_12.dart';

class ThemeSwitcherHistoryItem extends StatelessWidget {
  //
  final String data;

  ThemeSwitcherHistoryItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return MyText12(data);
  }
}
