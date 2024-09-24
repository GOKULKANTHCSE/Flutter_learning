import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> fruits = ['Orange', 'Apple', 'Grapes', 'Banana', 'Stawberry'];
  Map fruits_persons = {
    'fruits': ['Orange', 'Apple', 'Grapes', 'Banana', 'Stawberry'],
    'names': ['Gokul', 'Daivat', 'Elsa', 'Deepa'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Colors.pinkAccent,
        elevation: 8,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.perm_contact_cal_rounded),
        //         onTap: () {
        //           print(fruits_persons['fruits'][index]);
        //         },
        //         title: Text(fruits_persons['fruits'][index]),
        //         subtitle: Text(fruits_persons['names'][index]),
        //       ),
        //     );
        //   },
        // ),
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: (2 / 3),
        //   ),
        //   children: [
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('orange')),
        //     ),
        //   ],
        // ),
        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(fruits[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
