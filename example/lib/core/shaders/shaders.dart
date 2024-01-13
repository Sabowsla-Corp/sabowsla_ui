import 'package:flutter/material.dart';

class Shaders {
  Shader fadeTopBottom(Rect rect) {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.transparent,
        Colors.white,
        Colors.white,
        Colors.transparent,
      ],
    ).createShader(rect);
  }
}

var shaders = Shaders();
