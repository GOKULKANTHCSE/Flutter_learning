import 'package:flutter/material.dart';
import 'package:learning_project/Widgets/Button_Types.dart';
import 'package:learning_project/Widgets/Container_sized.dart';
import 'package:learning_project/Widgets/Rows_and_columns.dart';
import 'package:learning_project/Widgets/dismissible.dart';
import 'package:learning_project/Widgets/drawer.dart';
import 'package:learning_project/Widgets/image.dart';
import 'package:learning_project/Widgets/listview.dart';
import 'package:learning_project/Widgets/snackbar.dart';

void main() {
  runApp(new Mylearning());
}

class Mylearning extends StatelessWidget {
  const Mylearning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color.fromARGB(100, 83, 36, 121)),
      home: ImageWidget(),
    );
  }
}
