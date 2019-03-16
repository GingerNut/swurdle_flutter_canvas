
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swurdle_flutter_canvas/flutter_interface.dart';
import 'package:swurdlelogic/swurdlelogic.dart' as SW;


class Hexagon extends CustomPaint{

  FlutterInterface ui;
  SW.Game game;
  SW.Tile tile;
  double hexSize;
  Size size;

  double homeX;
  double homeY;


  Hexagon(this.ui,this.game, this. size, this.tile){

    setVariables();

  }




  bool pointInside(Offset offset) => (offset.dx > homeX - hexSize
        && offset.dx < homeX + hexSize
        && offset.dy > homeY - hexSize
        && offset.dy < homeY + hexSize
    );


  draw(Canvas canvas){

    final paint = Paint();

    paint.color = Colors.amberAccent;

    var center = Offset(homeX, homeY);

    canvas.drawCircle(center, hexSize, paint);

  }

  drawLetter(Canvas canvas){

    final paint = Paint();

    paint.color = Colors.brown;

    final paragraphStyle = new ParagraphStyle(
      fontSize: hexSize,
      textAlign: TextAlign.center,
    );

    final paragraphBuilder = new ParagraphBuilder(paragraphStyle)

      ..addText(game.position.letters[tile.k]);

    final paragraph = paragraphBuilder.build();
    paragraph.layout(ParagraphConstraints(width: 0));


    final offset = new Offset(homeX, homeY - hexSize/2);
    canvas.drawParagraph(paragraph, offset);
  }









  setVariables(){
    const padding = 1.0;
    const horizontal_packing = 0.75;

    double root3over2 = sqrt(3)/2;

    hexSize = min(size.width / ui.game.size * root3over2 /1.63, size.height/ ui.game.size * root3over2 / 1.45);

    hexSize /= 1.8;

    double hexagonSpacingVertical = hexSize * (2 + padding * 2) * root3over2;
    double hexagonSpacingHorizontal = hexSize * (2 + padding * 2) * horizontal_packing;

    double horizontalPadding = (size.width - hexagonSpacingHorizontal * ui.game.size)/2;
    double verticalPadding = (size.height - hexagonSpacingVertical * ui.game.size)/2 ;

    hexSize *= 1.5;

    homeX = tile.i * hexagonSpacingHorizontal + hexagonSpacingHorizontal ;
    homeY = tile.j * hexagonSpacingVertical + hexagonSpacingVertical ;
    if(tile.i.isEven) homeY += verticalPadding/2;

  }


}