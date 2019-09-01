import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundNumber);
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
              buildKey(soundNumber: 1, keyColor: Colors.red[600]),
              buildKey(soundNumber: 2, keyColor: Colors.orange[600]),
              buildKey(soundNumber: 3, keyColor: Colors.yellow[600]),
              buildKey(soundNumber: 4, keyColor: Colors.green[600]),
              buildKey(soundNumber: 5, keyColor: Colors.teal[600]),
              buildKey(soundNumber: 6, keyColor: Colors.blue[600]),
              buildKey(soundNumber: 7, keyColor: Colors.purple[600]),
            ],
          ),
        ),
      ),
    );
  }
}
