import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "X",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              creaTecla(color: Colors.red, nota: 1),
              creaTecla(color: Colors.green, nota: 2),
              creaTecla(color: Colors.lightBlueAccent, nota: 3),
              creaTecla(color: Colors.redAccent, nota: 4),
              creaTecla(color: Colors.yellow, nota: 5),
              creaTecla(color: Colors.black, nota: 6),
              creaTecla(color: Colors.purple, nota: 7),
              creaTecla(color: Colors.lightGreenAccent, nota: 8),
              creaTecla(color: Colors.grey, nota: 9),
              creaTecla(color: Colors.brown, nota: 10)
            ],
          ),
        ),
      ),
    );
  }

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota}){
    return Expanded(
      child: FlatButton(
      onPressed: (){
        teclaSound(nota);
      },
      color: color,
    ),
    );
  }

}

