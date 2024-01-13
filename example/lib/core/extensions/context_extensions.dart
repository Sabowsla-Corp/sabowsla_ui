import 'package:example/core/enums/screen_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  double get shortest => MediaQuery.sizeOf(this).shortestSide;

  bool get isMobile => screenType == ScreenType.mobile;
  bool get isDektop => screenType == ScreenType.desktop;

  ScreenType get screenType {
    if (width > height) {
      return ScreenType.desktop;
    } else {
      return ScreenType.mobile;
    }
  }

  double relative(double size) {
    if (kIsWeb) {
      return size;
    }
    return shortest * size / screenRef;
  }
}

double screenRef = 350;
