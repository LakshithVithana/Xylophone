import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int toneNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(toneNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, toneNumber: 1),
              buildKey(color: Colors.orange, toneNumber: 2),
              buildKey(color: Colors.yellow, toneNumber: 3),
              buildKey(color: Colors.green, toneNumber: 4),
              buildKey(color: Colors.green.shade900, toneNumber: 5),
              buildKey(color: Colors.blue, toneNumber: 6),
              buildKey(color: Colors.purple, toneNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
