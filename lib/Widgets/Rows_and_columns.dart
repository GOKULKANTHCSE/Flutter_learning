import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Columns'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellowAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // direction: Axis.vertical,
          // alignment: WrapAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.lightBlueAccent,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blueAccent,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
