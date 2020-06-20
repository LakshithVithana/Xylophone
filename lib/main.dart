import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.black,
                onPressed: () {
                  playSound(1);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(2);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(3);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(5);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(6);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
