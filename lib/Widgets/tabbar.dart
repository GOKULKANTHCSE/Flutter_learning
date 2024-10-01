import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "Whatsapp",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 10,
                indicatorPadding: EdgeInsets.all(2),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    text: 'Chats',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                    ),
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    text: 'Calls',
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ]),
        ));
  }
}
