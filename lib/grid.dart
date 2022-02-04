import 'package:flutter/material.dart';

enum cell_contents { empty, red, blue, green, purple }

class GridCell extends StatelessWidget {
  const GridCell({Key? key, required this.cellContains}) : super(key: key);

  final cell_contents cellContains;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class GameGrid extends StatelessWidget {
  const GameGrid({Key? key, required this.cellsContain}) : super(key: key);

  final List<cell_contents> cellsContain;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      children: buildList(cellsContain),
    );
  }

  List<GridCell> buildList(contents) {
    List<GridCell> cellList = [];
    for (int i = 0; i < contents.length; i++) {
      GridCell newCell = GridCell(cellContains: contents[i]);
      cellList.add(newCell);
    }

    return cellList;
  }
}
