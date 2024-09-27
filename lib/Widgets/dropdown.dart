import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String selectedvalue = 'Gokul';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Drop_Down"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.lime,
              margin: EdgeInsets.all(15),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_circle_down_rounded),
                isExpanded: true,
                value: selectedvalue,
                items: <String>['Gokul', 'Naruto', 'Goku', 'Asta']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      child: Text(value), value: value);
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedvalue = newvalue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
