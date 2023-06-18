import 'package:flutter/material.dart';
import 'package:themeswitcher/conf/values/strings_constants.dart';
import 'package:themeswitcher/theme/default/default_app_bar.dart';
import 'package:themeswitcher/theme/text/text16/text_16_medium.dart';

class TextScreen extends StatelessWidget {
  //
  final bool isLight;

  const TextScreen({required this.isLight});

  @override
  Widget build(BuildContext context) {
    final text = isLight ? MyStrings.helloWorld : MyStrings.byeWorld;

    return Scaffold(
      appBar: MyAppBar(title: text),
      body: Center(child: MyText16m(text)),
    );
  }
}
