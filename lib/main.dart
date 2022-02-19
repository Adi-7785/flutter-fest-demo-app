import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
MaterialApp(
debugShowCheckedModeBanner: false,
home: Xylophone(),
));

class Xylophone extends StatelessWidget {
  final audioFiles = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];

  final colors = [
    0xffF74231,
    0xffFF9700,
    0xffFFEB3C,
    0xff4DAF4D,
    0xff009788,
    0xff2196F3,
    0xff9C28B1
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView.builder(
                  itemCount: audioFiles.length,
                  itemBuilder: (ctx, index) {
                    return (Container(
                      margin: EdgeInsets.only(bottom: 15),
                     child: (
                       TextButton(
                        style: TextButton.styleFrom(
                          // padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Color(colors[index]),
                          minimumSize: Size(120,85),
                          maximumSize: Size(130, 85),
                          alignment: Alignment.centerRight,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),),

                        ),
                        onPressed: () {
                          final player = AudioCache();
                          player.play(audioFiles[index]);
                        },
                        child: Container(
                          width: 16,
                          height: 16,
                          margin: EdgeInsets.only(right:50),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(500)),
                          ),
                        )
                      )),
                    ));
                  })),
        ),
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.indigo.shade700,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note1.wav');
// },
// child: const Text(
// 'Note 1',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.blueAccent,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note2.wav');
// },
// child: const Text(
// 'Note 2',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.green,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note3.wav');
// },
// child: const Text(
// 'Note 3',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.yellow,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note4.wav');
// },
// child: const Text(
// 'Note 4',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.deepOrangeAccent,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note5.wav');
// },
// child: const Text(
// 'Note 5',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.redAccent.shade700,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note6.wav');
// },
// child: const Text(
// 'Note 6',
// style: TextStyle(color: Colors.white),
// ),
// ),
// TextButton(
// style: TextButton.styleFrom(
// padding: const EdgeInsets.all(16.0),
// textStyle: const TextStyle(fontSize: 20),
// backgroundColor: Colors.teal,
// ),
// onPressed: () {
// final player = AudioCache();
// player.play('note7.wav');
// },
// child: const Text(
// 'Note 7',
// style: TextStyle(color: Colors.white),
// ),
// ),
// ],
// ),
