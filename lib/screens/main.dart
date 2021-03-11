import 'package:flutter/material.dart';

import 'DetailedPage.dart';
import 'GridViewHomePage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tabs = [
      Center(child: GridViewHomePage()),
      Center(child: DetailedPage()),
      Center(child: GridViewHomePage()),

    ];

    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Grid"),
            backgroundColor: Colors.white

          ),BottomNavigationBarItem(
            icon: Icon(Icons.height),
            title: Text("list"),
            backgroundColor: Colors.blue

          ),BottomNavigationBarItem(
            icon: Icon(Icons.settings ),
            title: Text("detailed"),
            backgroundColor: Colors.blue
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;

          });
        },
      ),
    );
  }
}



