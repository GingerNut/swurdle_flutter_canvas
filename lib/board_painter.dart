


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

    canvas.drawRect(Rect.fromPoints(Offset(0,0),Offset(size.width, size.height)) ,Paint()..color = Colors.green );


    game.board.tiles.forEach((t) => hexagons.add(Hexagon(ui, game, size,t)));

    hexagons.forEach((h) => h.draw(canvas));


    hexagons.forEach((h) => h.drawLetter(canvas));
  }


  bool shouldRepaint(CustomPainter oldDelegate) => false;






}