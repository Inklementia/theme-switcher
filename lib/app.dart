// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:themeswitcher/conf/enums/theme_enum.dart';
import 'package:themeswitcher/feature/theme_switcher/mobx/store.dart';

// Project imports:
import 'conf/values/strings_constants.dart';
import 'core/navigator/route_generator.dart';
import 'core/navigator/routes_constants.dart';
import 'core/root/navigator_service.dart';

class MyApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ThemeSwitcherStore(),
      child: Consumer<ThemeSwitcherStore>(
        builder: (_, themeStore, __) {
          return Observer(
            builder: (_) {
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: themeStore.theme!.overlayStyle,
                child: MaterialApp(
                  theme: themeStore.theme!.themeData,
                  //
                  initialRoute: MyRoutes.switcher,
                  debugShowCheckedModeBanner: false,
                  onGenerateTitle: (_) => MyStrings.appName,
                  //
                  navigatorKey: NavigatorService.key,
                  onGenerateRoute: RouteGenerator.generateRoute,
                  navigatorObservers: <NavigatorObserver>[],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
