// Flutter imports:
import 'package:flutter/material.dart';
import 'package:themeswitcher/conf/values/strings_constants.dart';
import 'package:themeswitcher/theme/default/default_app_bar.dart';
import 'package:themeswitcher/theme/text/text16/text_16_medium.dart';

class ErrorScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: MyStrings.routingErrorTitle),
      body: Center(
        child: MyText16m(
          MyStrings.routingErrorDesc,
          maxLines: 2,
        ),
      ),
    );
  }
}
