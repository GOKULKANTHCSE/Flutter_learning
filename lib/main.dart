import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/Button_Types.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/Container_sized.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/Rows_and_columns.dart';
import 'package:learning_project/Widgets/alert.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/dismissible.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/drawer.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/image.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/listview.dart';
// ignore: unused_import
import 'package:learning_project/Widgets/snackbar.dart';

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
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(100, 83, 36, 121)),
      home: AlertWidget(),
    );
  }
}
