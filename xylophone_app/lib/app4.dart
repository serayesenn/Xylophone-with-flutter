import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class App4 extends StatefulWidget {
  const App4({super.key});

  @override
  State<App4> createState() => _App4State();
}

class _App4State extends State<App4> {
  
  void cal(int a){
    final assetPlayer=AssetsAudioPlayer();
    assetPlayer.open(Audio("lib/assets/note$a.wav"));
  }
  Expanded buildKey(Color color, int a, String nota){
    return Expanded(
                child: ElevatedButton(onPressed: () {
                  cal(a);
                }, child: Text(nota, style: TextStyle(color:Colors.black, fontSize: 30),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  elevation: 20
                )),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1,"do"),
              buildKey(Colors.orange, 2, "re"),
              buildKey(Colors.yellow, 3, "mi"),
              buildKey(Colors.green, 4, "fa"),
              buildKey(Colors.blue, 5, "sol"),
              buildKey(Colors.blue.shade900, 6, "la"),
              buildKey(Colors.purple, 7, "si"),
              
            ],
          ),
        )),
      ),
    );
  }
}