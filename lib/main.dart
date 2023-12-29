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

  void buildButton() {
    Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        onPressed: () {
          playsound(1);
        },
        child: Text(
          'click me',
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
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playsound(1);
                  },
                  child: Text(
                    'click me',
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playsound(2);
                  },
                  child: Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playsound(3);
                  },
                  child: Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playsound(4);
                  },
                  child: Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade900,
                  ),
                  onPressed: () {
                    playsound(5);
                  },
                  child: Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playsound(6);
                  },
                  child: Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                  child: Text('Click me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
