import 'dart:math';

import 'package:flutter/widgets.dart';

var pinkColors = PinkColors();

class PinkColors {
  Color grey51 = const Color.fromARGB(255, 51, 51, 51);
  //0xffffbcc6 in rgba
  Color mainColor = const Color.fromARGB(255, 255, 188, 198);
  Color mainColor2 = const Color(0xFFffebf0);
  Color shadeColor = const Color(0xFFf86058);
  Color black = const Color(0xFF000000);

  Color get getRandomColor =>
      gridBoardColors[Random.secure().nextInt(gridBoardColors.length ~/ 2)];

  Color splashColor = const Color.fromRGBO(255, 64, 129, 0.5);
  Color redColor = const Color(0xFFdf0a0a);
  Color redLikeColor = const Color(0xFFe85050);

  List<Color> gridBoardColors = [
    const Color(0xFFffbcc6),
    const Color(0xFFffa5b1),
    const Color(0xFFff8e9c),
    const Color(0xFFff7787),
    const Color(0xFFff6072),
    const Color(0xFFfbdcdc),
    const Color(0xFFf7b9b9),
    const Color(0xFFf29696),
    const Color(0xFFed7373),
    const Color(0xFFe85050),
    const Color(0xFFe32d2d),
    const Color(0xFFdf0a0a),
    const Color(0xFFf9c2cf),
    const Color(0xFFf4abb9),
    const Color(0xFFefa3a4),
    const Color(0xFFe58c8f),
    const Color(0xFFdb7681),
    const Color(0xFFd06173),
    const Color(0xFFc54c66),
    const Color(0xFFfdd6e3),
    const Color(0xFFfcbec7),
    const Color(0xFFfba6ab),
    const Color(0xFFfa8f8f),
    const Color(0xFFf97773),
    const Color(0xFFf86058),
    const Color(0xFFf7483d),
    const Color(0xFFffebf0),
    const Color(0xFFffd3db),
  ];
}
