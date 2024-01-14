// ignore_for_file: constant_identifier_names

class Routes {
  static const String home = '/';
  static const String docs = '/docs';
  static const String themes = '/themes';
  static const String examples = '/examples';
  static const String github = '/github';
}

enum RouteEnum {
  Home,
  Docs,
  Themes,
  Examples,
  Github,
}

extension RouteEnumExtension on RouteEnum {
  String get getName => toString().split(".").last;
}
