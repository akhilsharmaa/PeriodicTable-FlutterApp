
//Version 1.2.0 +3 completed.


import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
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


  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      testDevices: testDevices != null ? <String> [testDevices] : null ,
      nonPersonalizedAds: true,
      keywords: <String> ['Study','Education','Exams','Chemistry','Physics','Maths']);

  BannerAd  _bannerAd;

  BannerAd createBannerAd(){
    return BannerAd(adUnitId:'ca-app-pub-4745993238831334/9152760622',
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event){
        print("Banner $event");
      },);
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
        appId: 'ca-app-pub-4745993238831334~4205230863'
    );
    _bannerAd = createBannerAd()..load()..show(

    );
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }


  int getElementNumber(){ return widget.elementNumber-1;}

  @override
  Widget build(BuildContext context) {


    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;


    ListOfElements listOfElements = new ListOfElements();

    return Scaffold(
      backgroundColor: const Color(0xFF161616),
      // backgroundColor: const Color(0xFF290013),


      appBar: AppBar(
        actions: [
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Wikipedia"),
              ),
            ),

            onTap:()=> launch("${listOfElements.getWikipediaLink(getElementNumber())}"),
          )
        ],
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text("${listOfElements.getElementFullName(getElementNumber())}"),
      ),
      body: ListView(
        children: [
          // Stack Image
          InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder:
                (context) => ImageFullView(getElementNumber()),
            ));
            },
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: screenHeight*0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstIn),
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          image: NetworkImage("${listOfElements.getElementImageLink(getElementNumber())}")
                      )
                  ),
                ),

                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:24.0),
                        child: Text("${listOfElements.getElementNumber(getElementNumber())}",style: TextStyle(fontSize: screenHeight* 0.03,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:32.0),
                        child: Text("${listOfElements.getElementSymbol(getElementNumber())}",style: TextStyle(fontSize: screenHeight* 0.05,color: Colors.orange.shade400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:32.0,bottom: 5),
                        child: Text("${listOfElements.getElementFullName(getElementNumber())}",style: TextStyle(fontSize: screenHeight * 0.02,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:35.0,bottom: 10),
                        child: Text("${listOfElements.getElementAtomicMass(getElementNumber())}",style: TextStyle(fontSize: screenHeight * 0.015,color: Colors.white60),),
                      ),


                    ],
                  ),
                ),
                //
                // Positioned(
                //   right: 15,
                //   top: 10,
                //   child: RaisedButton(
                //     onPressed:()=> launch("${listOfElements.getWikipediaLink(getElementNumber())}"),
                //     child: Text("Wikipedia"),
                // ),)
              ],

            ),
          ),


          // Group and Periods
          SizedBox(height: screenHeight * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text("Group  ",style: TextStyle(
                      fontSize: screenHeight * 0.02 ,
                      color: Colors.grey
                  ),),
                  Text("${listOfElements.getGroupNumberOfAtom(getElementNumber())}",style: TextStyle(
                      fontSize: screenHeight * 0.025 ,
                      color: Colors.orange
                  ),),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 10,left: 20),
              //   color: Colors.white,
              //   height: screenHeight * 0.02,
              //   width: screenWidth * 0.01,
              // ), //
              Row(
                children: [
                  Text("Period   ",style: TextStyle(
                      fontSize: screenHeight * 0.02 ,
                      color: Colors.grey
                  ),),
                  Text("${listOfElements.getPeriodNumberOfAtom(getElementNumber())}",style: TextStyle(
                      fontSize: screenHeight * 0.025 ,
                      color: Colors.orange
                  ),),
                ],
              ),
            ],
          ),




          // Electron Proton and Neutron
          Container(
            height: screenHeight*0.13,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(

                color: Colors.red.shade600,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("${listOfElements.getNumberOfElectrons(getElementNumber())}",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.03
                          ),),
                          Text("electron",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.013
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("${listOfElements.getNumberOfProtons(getElementNumber())}",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.03
                          ),),
                          Text("proton",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.013
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("${listOfElements.getNumberOfNeutron(getElementNumber())}",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.03
                          ),),
                          Text("neutron",style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.013
                          ),),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: screenWidth* 0.05),
              Icon(Icons.list,color: Colors.orange,),
              SizedBox(width: screenWidth* 0.05),
              Text("Discovered by :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("${listOfElements.getElementDiscoveryBy(getElementNumber())}",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.white
              ),),
            ],
          ) ,


          SizedBox(height: 8),



          // Year of Discovery
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.search_rounded,color: Colors.greenAccent,),
              SizedBox(width: 10),
              Text("Year of discovery : ",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("${listOfElements.getYearOfDiscovery(getElementNumber())}",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.grey,
            height: 0.2,
          ), //



          // Electronic Configuration
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.label_important_outline,color: Colors.blue,),
              SizedBox(width: 10),
              Text("Ele - config :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("${listOfElements.getElementElectronConfiguration(getElementNumber())}",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ) ,


          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.grey.shade600,
            height: 0.2,
          ), // Divider



          // Valency
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.label_important_outline,color: Colors.blue,),
              SizedBox(width: 10),
              Text("Valency :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("${listOfElements.getValencyOfAtom(getElementNumber())}",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ) ,


          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.grey,
            height: 0.2,
          ), // Divider



          // Electron affinity:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.label_important_outline,color: Colors.blue,),
              SizedBox(width: 10),
              Text("Electron affinity:",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("${listOfElements.getElectronAffinity(getElementNumber())}",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ) ,

          // C property
          ElementsListTileListView("Van der waals radius", "${listOfElements.getVanderWallRadius(getElementNumber())}"),
          HeadingProperties("°C properties"),
          ElementsListTileListView("Atom density", "${listOfElements.getAtomDensity(getElementNumber())}"),
          ElementsListTileListView("Phase of Matter", "${listOfElements.getPhaseOfMatter(getElementNumber())}"),
          ElementsListTileListView("Atomic Radius", "${listOfElements.getAtomicRadius(getElementNumber())}"),
          ElementsListTileListView("Melting point", "${listOfElements.getMeltingPoint(getElementNumber())}"),
          ElementsListTileListView("Boiling point", "${listOfElements.getBoilingPoint(getElementNumber())}"),
          ElementsListTileListView("Electro-negativity", "${listOfElements.getElectronegativity(getElementNumber())}"),


          //Atomic properties
          HeadingProperties("Atomic properties"),
          ElementsListTileListView("", ""),

        ],
      ),
    );
  }
}



class ElementsListTileListView extends StatelessWidget {
  
  var title;
  var subtitle;

  ElementsListTileListView(this.title,this.subtitle);
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.grey,
            height: 0.2,
          ), // Divider
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$title :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("$subtitle",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
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
      padding: const EdgeInsets.only(top:8.0),
      child: Container(
        // elevation: 5,
        // shadowColor: Colors.white,
        // decoration: BoxDecoration(),
        // height: 45,
        color: Color(0xFF393939),
        // color: Colors.black26,
        child: Row(
          children: [
            SizedBox(width: 10,),
            // Icon(Icons.pending_rounded ,color: Colors.greenAccent,),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("$heading",style: TextStyle(
                color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

