import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.lime,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Gokulkanth.jpg")),
                    color: Colors.greenAccent,
                  ),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: 60,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          // child: Stack(
          //   children: [
          //     Positioned(
          //       top: 50,
          //       child: Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.teal,
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 50,
          //       child: Container(
          //         height: 150,
          //         width: 150,
          //         color: Colors.orangeAccent,
          //       ),
          //     ),
          //     Positioned(
          //       right: 20,
          //       left: 50,
          //       child: Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
