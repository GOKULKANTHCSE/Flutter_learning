import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animatedtext extends StatelessWidget {
  const Animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Animated Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  "Gokul Daivat",
                  textStyle:
                      TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  //speed: Duration(milliseconds: 150),
                ),
              ],
              totalRepeatCount: 5,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
