import 'package:flutter/material.dart';

import 'package:learning_project/Widgets/forms.dart';

void main() {
  runApp(const Mylearning());
}

class Mylearning extends StatelessWidget {
  const Mylearning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.orangeAccent),
      home: FormWidget(),
    );
  }
}
