import 'package:flutter/material.dart';
import 'package:rock_paper_scisser/game_page.dart';

class Loding_page extends StatelessWidget {
  const Loding_page({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => Game_Page(),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 184, 240),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text('Rock Paper Scisser'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image(
                image: AssetImage('images/loading.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text(
                  'version 2.0.2',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
