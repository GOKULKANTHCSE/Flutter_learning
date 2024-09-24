import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Container Sized"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.pink),
              padding: WidgetStateProperty.all(EdgeInsets.all(20)),
            ),
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.blue,
                  onPressed: () {},
                ),
                content: Text(
                  'Show it is Error',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 2500),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text(
              'Show the SnackBar',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
