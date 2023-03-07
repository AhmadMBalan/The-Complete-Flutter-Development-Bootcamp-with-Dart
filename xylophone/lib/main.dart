import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

// music play sound number function, like note1.wav, note2.wav etc.
  Future<void> playSound(int number) async {
    final player = AudioCache();
 await player.setSource(AssetSource('note$number.wav'));
  }
// Expanded Widget Function Used for repeated Code
  Expanded buildKey(int soundNum, Color color){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color
        ),
        onPressed: (){
          playSound(soundNum);
        },
        child: Text(""),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // var buttonHeight = MediaQuery.of(context).size.height/2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.green),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.deepPurpleAccent),
              buildKey(5, Colors.redAccent),
              buildKey(6, Colors.black54),
              buildKey(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}