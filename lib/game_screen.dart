import 'package:flutter/material.dart';
import 'package:swurdle_flutter_canvas/flutter_interface.dart';
import 'package:swurdle_flutter_canvas/game_board.dart';
import 'package:swurdlelogic/swurdlelogic.dart';


class GameScreen extends StatelessWidget {
  Game game;

  final FlutterInterface ui;
  GameScreen(this.ui, this.game);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
      ),
      body: Center(
        child: GameBoard(ui, game),

      ),
    );
  }

}