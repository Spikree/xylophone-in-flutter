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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playsound(1);
                  },
                  child: Text(
                    'Click me',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playsound(2);
                  },
                  child: Text('Click me'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playsound(3);
                  },
                  child: Text('Click me'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playsound(4);
                  },
                  child: Text('Click me'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade900,
                  ),
                  onPressed: () {
                    playsound(5);
                  },
                  child: Text('Click me'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playsound(6);
                  },
                  child: Text('Click me'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                  child: Text('Click me'),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
