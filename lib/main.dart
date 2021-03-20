
//Version 1.0.0 +1 completed.


import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:periodic_table/adState.dart';
import 'package:provider/provider.dart';

import 'screens/DetailedPage.dart';
import 'screens/GridViewHomePage.dart';
import 'screens/ListViewBuilderHomePage.dart';
import 'screens/PageViewBuilderHomePage.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final initFuture = MobileAds.instance.initialize();
  // final adState = AdState(initFuture);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red,
        statusBarIconBrightness: Brightness.light,
  ));

  runApp(MaterialApp(
    themeMode: ThemeMode.dark,
    home: Provider.value(
      // value : adState ,
        builder : (context, child) =>  MyApp()),

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

    return DefaultTabController(
      length: 3,
      initialIndex: _currentIndex,
      child: Scaffold(

        appBar: AppBar(
          title: Text("Periodic-table"),
          elevation: 0,
          backgroundColor: Colors.red,
          bottom: TabBar(

            tabs: [
              Tab(text: "Modern table",),
              Tab(text: "Page view",),
              Tab(text: "List view",),
            ],
          ),
        ),
        body: TabBarView(

          children: [
            GridViewHomePage(),
            PageViewBuilderHomePage(),
            ListViewBuilderHomePage(),

          ],
        )

        // ),
      ),
    );
  }
}



