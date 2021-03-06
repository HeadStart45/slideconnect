import 'dart:math';
import 'package:slideconnect/grid.dart';
import 'package:flutter/material.dart';

Random frand = Random(DateTime.now().millisecondsSinceEpoch);

class GameModel extends ChangeNotifier {
  final cell_contents blue = cell_contents.blue;
  final cell_contents red = cell_contents.red;
  final cell_contents empty = cell_contents.empty;
  final cell_contents green = cell_contents.green;
  final cell_contents purple = cell_contents.purple;

  final List<cell_contents> _currentS = [];

  List<cell_contents> genRandomStart() {
    List<cell_contents> choices = [blue, red, green, purple];
    int choicenum = 4;
    int emptySpot = frand.nextInt(26);

    for (int i = 0; i > 25; i++) {
      if (i == emptySpot) {
        _currentS.add(empty);
      } else {
        _currentS.add(choices[frand.nextInt(choicenum)]);
      }
    }

    List<cell_contents> outstart = _currentS;
    return outstart;
  }
}

GameModel game = GameModel();
