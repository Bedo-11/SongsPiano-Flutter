import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void voice(n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded song(c, n) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          voice(n);
        },
        color: c,
        child: Text('Play a song!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('SONGS'),
          backgroundColor: Colors.yellow[700],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              song(Colors.red, 1),
              song(Colors.orange, 2),
              song(Colors.yellow, 3),
              song(Colors.green, 4),
              song(Colors.teal, 5),
              song(Colors.blue, 6),
              song(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
