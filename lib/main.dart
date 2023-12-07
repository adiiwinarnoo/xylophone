import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(Color colorsR, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorsR,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.green, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.cyan, 4),
                buildKey(Colors.grey, 5),
                buildKey(Colors.purple, 6),
                buildKey(Colors.blueGrey, 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
