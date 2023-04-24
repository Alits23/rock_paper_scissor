import 'package:flutter/material.dart';
import 'dart:math';

class Game_Page extends StatefulWidget {
  const Game_Page({super.key});

  @override
  State<Game_Page> createState() => _Game_PageState();
}

class _Game_PageState extends State<Game_Page> {
  String top = 'null';
  String bottom = 'null';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 117, 184, 240),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text('Rock Paper Scisser'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: Size(160, 50)),
                    onPressed: () {
                      setState(
                        () {
                          var words = ['R', 'P', 'S'];
                          var rand = Random();
                          top = words[rand.nextInt(words.length)];
                          bottom = words[rand.nextInt(words.length)];
                          print('$top , $bottom');
                        },
                      );
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
