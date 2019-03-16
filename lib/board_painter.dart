


import 'package:flutter/material.dart';
import 'package:swurdle_flutter_canvas/flutter_interface.dart';
import 'package:swurdle_flutter_canvas/hexagon.dart';
import 'package:swurdlelogic/swurdlelogic.dart' as SW;

class BoardPainter extends CustomPainter{

  SW.Game game;
  FlutterInterface ui;

  BoardPainter(this.ui, this. game){


  }

  List<Hexagon> hexagons = new List();


  void paint(Canvas canvas, Size size) {

    print(size);


    game.board.tiles.forEach((t) => hexagons.add(Hexagon(ui, game, size,t)));

    hexagons.forEach((h) => h.draw(canvas));


  }


  bool shouldRepaint(CustomPainter oldDelegate) => false;






}