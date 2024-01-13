class Routes {
  static const String home = '/';
  static const String terms = '/terms';
  static const String user = '/user';
}

enum RouteEnum {
  home,
  login,
  register,
  profile,
  settings,
  about,
  contact,
  textures,
  models,
  upload,
  user,
  terms,
}

extension RouteEnumExtension on RouteEnum {
  String get getName => toString().split(".").last;
}
