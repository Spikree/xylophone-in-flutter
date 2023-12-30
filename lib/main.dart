import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$soundNumber.wav"),
      autoStart: true,
      showNotification: true,
    );
  }

  Expanded buildButton({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text(
          '',
        ),
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
            children: [
              buildButton(color: Colors.red, soundNumber: 1),
              buildButton(color: Colors.orange, soundNumber: 2),
              buildButton(color: Colors.yellow, soundNumber: 3),
              buildButton(color: Colors.green, soundNumber: 4),
              buildButton(color: Colors.teal, soundNumber: 5),
              buildButton(color: Colors.blue, soundNumber: 6),
              buildButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
