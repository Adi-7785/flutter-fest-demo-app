import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.indigo.shade700,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: const Text(
                    'Note 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: const Text(
                    'Note 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  child: const Text(
                    'Note 3',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                  child: const Text(
                    'Note 4',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                  child: const Text(
                    'Note 5',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.redAccent.shade700,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                  child: const Text(
                    'Note 6',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                  },
                  child: const Text(
                    'Note 7',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
