import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons_Types'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextButton(
            //   style: ButtonStyle(
            //       padding: WidgetStateProperty.all(EdgeInsets.all(20)),
            //       backgroundColor: WidgetStateProperty.all(Colors.purple),
            //       elevation: WidgetStateProperty.all(50),
            //       overlayColor: WidgetStateProperty.all(Colors.greenAccent)),
            //   onPressed: () {},
            //   child: Text(
            //     'Click Me',
            //     style: TextStyle(fontSize: 20, color: Colors.black38),
            //   ),
            // ),
            ElevatedButton(
                style: ButtonStyle(
                    shadowColor: WidgetStateProperty.all(Colors.red),
                    backgroundColor: WidgetStateProperty.all(Colors.amber),
                    elevation: WidgetStateProperty.all(20),
                    padding: WidgetStateProperty.all(EdgeInsets.all(20)),
                    overlayColor: WidgetStateProperty.all(Colors.limeAccent)),
                onPressed: () {},
                child: Text(
                  'Hover here',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ))
          ],
        ),
        color: Colors.lightBlue,
      ),
    );
  }
}
