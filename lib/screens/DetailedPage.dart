//Version 2.1.1 + 6 completed.





import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:periodic_table/Backend/ElementDescription.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ImageFullView.dart';

const String testDevices = '05F58B3D963409FECCCCE6365F6FB23F';

class DetailedPage extends StatefulWidget {
  int elementNumber;
  DetailedPage(this.elementNumber);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {



  ListOfElements listOfElements = new ListOfElements();
  ElementDescription elementDescription = ElementDescription();


  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      testDevices: testDevices != null ? <String>[testDevices] : null,
      nonPersonalizedAds: true,
      keywords: <String>[
        'Study',
        'Education',
        'Exams',
        'Chemistry',
        'Physics',
        'Maths'
      ]);

  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: 'ca-app-pub-4745993238831334/9152760622',
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("Banner $event");
      },
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-4745993238831334~4205230863');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  int getElementNumber() {
    return widget.elementNumber - 1;
  }



  // Appbar
  nested(){
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool insertBoxIsScrolled){
          return [
            SliverAppBar(
              backgroundColor: Colors.red,
              collapsedHeight: 120,
              expandedHeight: 260.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.all(8),
                // Stack Image
                title: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ImageFullView(getElementNumber()),
                    ));
                  },
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0), BlendMode.dstIn),
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "${listOfElements.getElementImageLink(getElementNumber())}"
                                ))),
                      ),

                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                "${listOfElements.getElementNumber(getElementNumber())}",
                                style: GoogleFonts.alata(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: Text(
                                "${listOfElements.getElementSymbol(getElementNumber())}",
                                style: GoogleFonts.mavenPro(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.yellow),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32.0, bottom: 5),
                              child: Text(
                                "${listOfElements.getElementFullName(getElementNumber())}",
                                style: GoogleFonts.alata(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0, bottom: 2),
                              child: Text(
                                "${listOfElements.getElementAtomicMass(getElementNumber())}",
                                style:  GoogleFonts.mavenPro(
                                    fontSize: 15,
                                    // fontSize: screenHeight * 0.015,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Text("${listOfElements.getElementFullName(getElementNumber())}"),
                background: Image.network(
                  "${listOfElements.getElementImageLink(getElementNumber())}"
                ,fit: BoxFit.cover,
                ),

              ),
            )
          ];
        },
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      "Group  ",
                      style: GoogleFonts.mavenPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey.shade500),
                    ),
                    Text(
                      "${listOfElements.getGroupNumberOfAtom(getElementNumber())}",
                      style: GoogleFonts.mavenPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  ],
                ),




                Row(
                  children: [
                    Text(
                      "Period   ",
                      style: GoogleFonts.mavenPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey.shade500),
                    ),
                    Text(
                      "${listOfElements.getPeriodNumberOfAtom(getElementNumber())}",
                      style: GoogleFonts.mavenPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            // Electron Proton and Neutron
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.grey.shade900,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "${listOfElements.getNumberOfElectrons(getElementNumber())}",
                              style: TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "electron",
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 15,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "${listOfElements.getNumberOfProtons(getElementNumber())}",
                              style: TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "proton",
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "${listOfElements.getNumberOfNeutron(getElementNumber())}",
                              style: TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "neutron",
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            // Discovery By
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                // Icon(
                //   Icons.list,
                //   color: Colors.orange,
                // ),
                SizedBox(width: 10),
                Text(
                  "Discovered by :",
                  style: GoogleFonts.mavenPro(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${listOfElements.getElementDiscoveryBy(getElementNumber())}",
                  style: GoogleFonts.alef(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 8),

            // Year of Discovery
            Row(
              children: [
                SizedBox(width: 20),
                // Icon(
                //   Icons.search_rounded,
                //   color: Colors.greenAccent,
                // ),
                SizedBox(width: 10),
                Text(
                  "Year of discovery : ",
                  style: GoogleFonts.mavenPro(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${listOfElements.getYearOfDiscovery(getElementNumber())}",
                  style: GoogleFonts.anton(
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              color: Colors.grey,
              height: 0.2,
            ), //

            // Electronic Configuration
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                // Icon(
                //   Icons.label_important_outline,
                //   color: Colors.blue,
                // ),
                SizedBox(width: 10),
                Text(
                  "Ele - config :",
                  style: GoogleFonts.mavenPro(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${listOfElements.getElementElectronConfiguration(getElementNumber())}",
                  style: GoogleFonts.alegreyaSc(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              color: Colors.grey.shade600,
              height: 0.2,
            ), // Divider

            // Valency
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                // Icon(
                //   Icons.label_important_outline,
                //   color: Colors.blue,
                // ),
                SizedBox(width: 10),
                Text(
                  "Valency :",
                  style: GoogleFonts.mavenPro(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${listOfElements.getValencyOfAtom(getElementNumber())}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              color: Colors.grey,
              height: 0.2,
            ), // Divider






            // Electron affinity:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                // Icon(
                //   Icons.label_important_outline,
                //   color: Colors.blue,
                // ),
                SizedBox(width: 10),
                Text(
                  "Electron affinity:",
                  style: GoogleFonts.mavenPro(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${listOfElements.getElectronAffinity(getElementNumber())}",
                  style: GoogleFonts.alata(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),


            // Fun fact
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.grey.shade900,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.lightbulb,
                              color: Colors.yellow,
                            ),
                            Text(
                              "  Fun fact",
                              style: GoogleFonts.alef(
                                  fontSize: 24, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${elementDescription.getElementDescription(getElementNumber())}",
                          style: GoogleFonts.mavenPro(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),


            // C property



            // Wikipedia Link
            RaisedButton(
              color: Colors.black,
              onPressed:()=> launch("${listOfElements.getWikipediaLink(getElementNumber())}"),
              child: Text("Learn more on Wikipedia",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
            ),

            HeadingProperties("°C  properties"),
            ElementsListTileListView("Atom density",
                "${listOfElements.getAtomDensity(getElementNumber())}"),
            ElementsListTileListView("Phase of Matter",
                "${listOfElements.getPhaseOfMatter(getElementNumber())}"),
            ElementsListTileListView("Van der waals radius",
                "${listOfElements.getVanderWallRadius(getElementNumber())}"),
            ElementsListTileListView("Atomic Radius",
                "${listOfElements.getAtomicRadius(getElementNumber())}"),
            ElementsListTileListView("Melting point",
                "${listOfElements.getMeltingPoint(getElementNumber())}"),
            ElementsListTileListView("Boiling point",
                "${listOfElements.getBoilingPoint(getElementNumber())}"),
            ElementsListTileListView("Electro-negativity",
                "${listOfElements.getElectronegativity(getElementNumber())}"),

            HeadingProperties("Electromagnetic Properties"),

            ElementsListTileListView("Electrical Conductivity",
                "${listOfElements.getElectricalConductivity(getElementNumber())}"),

            //Atomic properties
            // HeadingProperties("Atomic properties"),
            ElementsListTileListView("",
                ""),
            ElementsListTileListView("", ""),
            // ElementsListTileListView("", ""),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      //
      // backgroundColor: const Color(0xFF161616),
      // backgroundColor: const Color(0xFF290013),
      //
      // appBar: AppBar(
      //   actions: [
      //     InkWell(
      //       child: Container(
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Wikipedia",
      //               style: GoogleFonts.alata(
      //               fontSize: 18,
      //               fontWeight: FontWeight.w400,
      //               color: Colors.white),
      //           ),
      //         ),
      //       ),
      //       onTap: () => launch(
      //         "${listOfElements.getWikipediaLink(getElementNumber())}",
      //       ),
      //     )
      //   ],
      //   toolbarHeight: 50,
      //   elevation: 0,
      //   backgroundColor: Colors.red,
      //   title: Text(
      //     "${listOfElements.getElementFullName(getElementNumber())}",
      //     style: GoogleFonts.mavenPro(
      //         fontWeight: FontWeight.bold, color: Colors.white),
      //   ),
      // ),
      //

      body:nested()

    );
  }
}

class ElementsListTileListView extends StatelessWidget {
  var title;
  var subtitle;

  ElementsListTileListView(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
            color: Colors.grey,
            height: 0.2,
          ), // Divider
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title :",
                style: GoogleFonts.mavenPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey.shade400),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "$subtitle",
                style: GoogleFonts.andika(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeadingProperties extends StatelessWidget {
  var heading;

  HeadingProperties(this.heading);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        // elevation: 5,
        // shadowColor: Colors.white,
        // decoration: BoxDecoration(),
        // height: 45,
        color: Colors.grey.shade900,
        // color: Colors.black26,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            // Icon(Icons.pending_rounded ,color: Colors.greenAccent,),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "$heading",
                style: GoogleFonts.alata(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
