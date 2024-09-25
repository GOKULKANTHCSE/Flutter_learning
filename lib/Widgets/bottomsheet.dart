import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                elevation: 0,
                isDismissible: false,
                enableDrag: true,
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Water'),
                        subtitle: Text('Katara'),
                      ),
                      ListTile(
                        title: Text('Air'),
                        subtitle: Text('Aang'),
                      ),
                      ListTile(
                        title: Text('Earth'),
                        subtitle: Text('Toph'),
                      ),
                      ListTile(
                        title: Text('Fire'),
                        subtitle: Text('Zuko'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("Show the Sheet")),
      ),
    );
  }
}
