import 'package:flutter/material.dart';
import 'package:learning_project/Widgets/Button_Types.dart';
import 'package:learning_project/Widgets/animatedtext.dart';
import 'package:learning_project/Widgets/drawer.dart';
import 'package:learning_project/Widgets/listview.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Add'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   title: Text('Bottom_Navigation'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          Animatedtext(),
          DrawerWidget(),
          Listview(),
          ButtonTypes(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
