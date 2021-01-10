import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final AudioCache player = new AudioCache();
  void playAudio(int numberOfAudio) {
    player.play('sound$numberOfAudio.mp3');
  }

  Widget buildKey(
      int numberOfAudio, Color keyColor, double left, double right) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.fromLTRB(left, 2, right, 2),
        child: FlatButton(
          child: Icon(
            Icons.auto_fix_high,
            color: keyColor.withGreen(100).withRed(100).withBlue(50),
          ),
          color: keyColor,
          onPressed: () {
            playAudio(numberOfAudio);
          },
          onLongPress: () {
            playAudio(numberOfAudio);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red, 0, 20),
              buildKey(2, Colors.orange, 20, 0),
              buildKey(3, Colors.yellow, 0, 20),
              buildKey(4, Colors.green, 20, 0),
              buildKey(5, Colors.teal, 0, 20),
              buildKey(6, Colors.blue, 20, 0),
              buildKey(7, Colors.purple, 0, 20),
            ],
          ),
        ),
      ),
    );
  }
}
