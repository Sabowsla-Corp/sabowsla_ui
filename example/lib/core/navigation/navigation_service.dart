import 'package:example/core/navigation/routes.dart';
import 'package:example/core/pages/home_page.dart';
import 'package:flutter/material.dart';

var navigationService = NavigationService();

class NavigationService {
  var navigatorKey = GlobalKey<NavigatorState>();

  void toTermsAndConditions() {
    navigatorKey.currentState?.pushNamed(Routes.terms);
  }

  void toUser() {
    navigatorKey.currentState?.pushNamed(Routes.user);
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _getPageRoute(const HomePage(), settings);

      default:
    }
    return null;
  }
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
