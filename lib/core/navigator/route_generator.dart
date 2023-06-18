// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themeswitcher/feature/error/error_screen.dart';
import 'package:themeswitcher/feature/theme_switcher/theme_switcher_screen.dart';
import 'package:themeswitcher/feature/text/text_screen.dart';
import 'routes_constants.dart';

class RouteGenerator {
  //

  static Route route(
    String? name,
    Widget widget, {
    bool isFade = false,
    bool isSlide = false,
    bool opaque = true,
  }) {
    if (isFade)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(curve: Curves.ease, parent: animation);
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    else if (isSlide)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      );
    else
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: RouteSettings(name: name),
      );
  }

  //

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      ///
      /// System
      ///

      case MyRoutes.switcher:
        return route(
          settings.name,
          ThemeSwitcherScreen(),
          isFade: true,
        );

      case MyRoutes.text:
        if (args is bool)
          return route(
            settings.name,
            TextScreen(isLight: args),
          );
        return _errorRoute();

      ///

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => ErrorScreen());
  }
}
