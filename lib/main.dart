import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red[600],
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange[600],
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow[600],
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green[600],
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.teal[600],
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue[600],
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple[600],
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
