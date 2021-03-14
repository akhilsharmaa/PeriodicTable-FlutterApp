import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';

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
      keywords: <String> []);

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
    _bannerAd = createBannerAd()..load()..show();
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
  ListOfElements listOfElements = new ListOfElements();

    return Scaffold(
      backgroundColor: Colors.grey.shade900,

      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text("${listOfElements.getElementFullName(getElementNumber())}"),
      ),
      body: ListView(

        children: [


          // Image Background

          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstIn),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: NetworkImage("${listOfElements.getElementImageLink(getElementNumber())}")
                    )
                ),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:24.0),
                    child: Text("${listOfElements.getElementNumber(getElementNumber())}",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:32.0),
                    child: Text("${listOfElements.getElementSymbol(getElementNumber())}",style: TextStyle(fontSize: 50,color: Colors.orange),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:32.0,bottom: 5),
                    child: Text("${listOfElements.getElementFullName(getElementNumber())}",style: TextStyle(fontSize: 32,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:35.0,bottom: 10),
                    child: Text("${listOfElements.getElementAtomicMass(getElementNumber())}",style: TextStyle(fontSize: 20,color: Colors.white60),),
                  ),
                ],
              )
            ],),




          // Electron Proton and Neutron

          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top :14 ,bottom: 14),
                      child: Column(
                        children: [
                          Text("${widget.elementNumber}",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          Text("electron",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top :14 ,bottom: 14),
                      child: Column(
                        children: [
                          Text("20",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          Text("proton",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top :14 ,bottom: 14),
                      child: Column(
                        children: [
                          Text("20",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          Text("neutron",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          // Group and Periods
          SizedBox(height: 10,),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Row(
                children: [
                  SizedBox(width: 16,),
                  Text("Group  ",style: TextStyle(
                    fontSize: 18 ,
                    color: Colors.grey
                  ),),
                  Text("IIA",style: TextStyle(
                    fontSize: 20 ,
                    color: Colors.orange
                  ),),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 10,left: 20),
                color: Colors.white,
                height: 30,
                width: 2,
              ), //

              Row(
                children: [
                  SizedBox(width: 16,),
                  Text("Period   ",style: TextStyle(
                      fontSize: 18 ,
                      color: Colors.grey
                  ),),
                  Text("4",style: TextStyle(
                      fontSize: 20 ,
                      color: Colors.orange
                  ),),
                ],
              ),
            ],
          ),



          SizedBox(height: 10,),



          Container(
            margin: EdgeInsets.only(top: 10,left: 20),
            color: Colors.grey,
            height: 0.5,
          ), //

          // Divider
          SizedBox(height: 8),



          // Atomic Number
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.list,color: Colors.orange,),
              SizedBox(width: 10),
              Text("Atomic number :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("20",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ) ,


          Container(
            margin: EdgeInsets.only(top: 10,left: 20),
            color: Colors.orange,
            height: 0.5,
          ), // Divider

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
              Text("1808",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.greenAccent,
            height: 0.5,
          ), //


          // Electronic Configuration
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.circle,color: Colors.blue,),
              SizedBox(width: 10),
              Text("Electronic configuration :",style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey
              ),), SizedBox(
                width: 20,
              ),
              Text("[Ar]4s2",style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white
              ),),
            ],
          ) ,


          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.blue,
            height: 0.5,
          ), // Divider

          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.circle,color: Colors.blue,),
                  SizedBox(width: 10),
                  Text("Atomic radius :",style: TextStyle(
                      fontSize: 14 ,
                      color: Colors.grey
                  ),), SizedBox(
                    width: 20,
                  ),
                  Text("197 (pm)",style: TextStyle(
                      fontSize: 20 ,
                      color: Colors.white
                  ),),
                ],
              ) ,
            ],
          ),
          ElementsListTileListView("Van der waals radius", "231(pm)"),
          ElementsListTileListView("Electron gravity", "1"),
          ElementsListTileListView("Electron gravity", "1"),
          ElementsListTileListView("Electron gravity", "1"),
          ElementsListTileListView("Electron gravity", "1"),
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
    return Column(
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
    );
  }
}
