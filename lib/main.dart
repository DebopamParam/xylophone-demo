import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void PlaySound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded buildButton({Color color=Colors.black, int soundnumber=1}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          PlaySound(soundnumber);
        },
        child: Text(""),
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
              buildButton(color:Colors.deepOrange,soundnumber: 1),
              buildButton(color:Colors.blueGrey, soundnumber:2),
              buildButton(color:Colors.redAccent,soundnumber: 3),
              buildButton(color:Colors.purple, soundnumber:4),
              buildButton(color:Colors.tealAccent,soundnumber: 5),
              buildButton(color:Colors.yellowAccent,soundnumber: 6),
              buildButton(color:Colors.green,soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
