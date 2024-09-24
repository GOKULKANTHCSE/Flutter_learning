import 'package:flutter/material.dart';

class Container_sized extends StatelessWidget {
  const Container_sized({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Container Sized"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
              ),
            ],
          ),
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              'Good',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
