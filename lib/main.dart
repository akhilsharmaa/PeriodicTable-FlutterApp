import 'package:flutter/material.dart';

import 'screens/DetailedPage.dart';
import 'screens/GridViewHomePage.dart';
import 'screens/ListViewBuilderHomePage.dart';
import 'screens/PageViewBuilderHomePage.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.dark,
    home: MyApp(),
    debugShowCheckedModeBanner: false,
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
      Center(child: PageViewBuilderHomePage()),
      Center(child: ListViewBuilderHomePage()),
      Center(child: DetailedPage(1)),

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
            backgroundColor: Colors.red
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.phone_android_sharp ),
              title: Text("Pages"),
              backgroundColor: Colors.grey.shade900
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.height),
            title: Text("list"),
            backgroundColor: Colors.red)

          ,BottomNavigationBarItem(
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



