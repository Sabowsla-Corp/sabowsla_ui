import 'package:example/core/navigation/routes.dart';
import 'package:example/core/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sabowsla_ui/sabowsla_ui.dart';

var navigationService = NavigationService();

class NavigationService {
  var navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return getPageWithAppBar(const HomePage(), settings);
      default:
    }
    return null;
  }
}

PageRoute getPageWithAppBar(Widget child, RouteSettings settings) {
  return _getPageRoute(
      Scaffold(
        body: Stack(
          children: [
            child,
            SUIAppBar(
              activeRoute: settings.name,
              routes: RouteEnum.values.map((e) => e.getName).toList(),
            ),
          ],
        ),
      ),
      settings);
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  _FadeRoute({required this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  final Widget child;
  final String? routeName;
}
