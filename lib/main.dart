import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swurdle_flutter_canvas/flutter_interface.dart';
import 'package:swurdle_flutter_canvas/game_screen.dart';

import 'package:swurdlelogic/swurdlelogic.dart';

AssetBundle _initBundle() {
  if (rootBundle != null)
    return rootBundle;
  return new NetworkAssetBundle(new Uri.directory(Uri.base.origin));
}

final AssetBundle _bundle = _initBundle();
FlutterInterface ui = new FlutterInterface();
Game game;

main() async {

  WidgetsFlutterBinding.ensureInitialized();

  game = new Game(ui);

  game.newGame(7);

  runApp(MyApp());
}




class MyApp extends StatelessWidget {



  MyApp();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Swurdle',
      theme: new ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFF4caf50),
        accentColor: const Color(0xFF4caf50),
        canvasColor: const Color(0xFFfafafa),
      ),

      home: GameScreen(ui, game),


    );
  }
}
