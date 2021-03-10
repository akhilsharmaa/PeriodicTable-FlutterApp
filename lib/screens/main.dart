import 'package:flutter/material.dart';

import 'DetailedPage.dart';
import 'GridViewHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

