

import 'package:swurdle_flutter_canvas/board_painter.dart';
import 'package:swurdle_flutter_canvas/flutter_interface.dart';
import 'package:swurdlelogic/swurdlelogic.dart' as SW;
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {


 final  FlutterInterface ui;
  SW.Game game;
  GameBoard(this.ui, this. game);


  @override
  createState() => GameBoardState(ui, game);

}

class GameBoardState extends State<GameBoard>{

  FlutterInterface ui;
  SW.Game game;

  GameBoardState(this.ui, this. game){


  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 600,
      height: 800,
      color: Colors.green,

      child: Stack(
        children: <Widget>[
          // Max Size
          Stack(



          ),
          
          Positioned(
            bottom: 0,


            child: ButtonBar (

              alignment: MainAxisAlignment.center,

                children: [
                  RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  child: const Text('swap'),
                   ),
                  RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: () {},
                    child: const Text('cancel'),
                  ),

                  RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: () {},
                    child: const Text('help'),
                  ),

                  RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: () {},
                    child: const Text('go'),
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }

}











