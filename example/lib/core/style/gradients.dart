import 'package:example/core/style/pink_colors.dart';
import 'package:flutter/material.dart';

var gradients = Gradients();

class Gradients {
  Gradient get randomPinkGradient {
    return LinearGradient(
      colors: [
        pinkColors.getRandomColor,
        pinkColors.getRandomColor,
      ],
    );
  }

  Gradient get purpleRed {
    return const LinearGradient(
      colors: [
        Colors.deepPurple,
        Colors.redAccent,
      ],
    );
  }
}
