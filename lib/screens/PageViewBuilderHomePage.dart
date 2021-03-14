import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';
import 'package:periodic_table/screens/GridViewHomePage.dart';
import 'DetailedPage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PageViewBuilderHomePage extends StatefulWidget {
  @override
  _PageViewBuilderHomePageState createState() => _PageViewBuilderHomePageState();
}

class _PageViewBuilderHomePageState extends State<PageViewBuilderHomePage> {


  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    ListOfElements listOfElements  = ListOfElements();

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(),
        child: PageView.builder(
          scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
          return Container(

            color: Colors.black,
            child: Column(
              children: [


                // Image Background
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: screenHeight*0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstIn),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: NetworkImage("${listOfElements.getElementImageLink(index)}")
                          )
                      ),
                    ),
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:24.0),
                          child: Text("${listOfElements.getElementNumber(index)}",style: TextStyle(fontSize: screenHeight* 0.03,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0),
                          child: Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(fontSize: screenHeight* 0.05,color: Colors.orange.shade400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0,bottom: 5),
                          child: Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: screenHeight * 0.02,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:35.0,bottom: 10),
                          child: Text("${listOfElements.getElementAtomicMass(index)}",style: TextStyle(fontSize: screenHeight * 0.015,color: Colors.white60),),
                        ),
                      ],
                    )
                  ],),




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
                        Text("${listOfElements.getGroupNumberOfAtom(index)}",style: TextStyle(
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
                        Text("${listOfElements.getPeriodNumberOfAtom(index)}",style: TextStyle(
                            fontSize: screenHeight * 0.025 ,
                            color: Colors.orange
                        ),),
                      ],
                    ),
                  ],
                ),




                // Electron Proton and Neutron
                Container(
                  height: screenHeight*0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.red.shade900,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("${listOfElements.getNumberOfElectrons(index)}",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.03
                              ),),
                              Text("electron",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.013
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("${listOfElements.getNumberOfProtons(index)}",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.03
                              ),),
                              Text("proton",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.013
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("${listOfElements.getNumberOfNeutron(index)}",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.03
                              ),),
                              Text("neutron",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.013
                              ),),
                            ],
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
                    Text("${listOfElements.getElementDiscoveryBy(index)}",style: TextStyle(
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
                    Text("${listOfElements.getYearOfDiscovery(index)}",style: TextStyle(
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
                    Text("${listOfElements.getElementElectronConfiguration(index)}",style: TextStyle(
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
                    Text("${listOfElements.getValencyOfAtom(index)}",style: TextStyle(
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


                // Oxidation State
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.label_important_outline,color: Colors.blue,),
                    SizedBox(width: 10),
                    Text("Electron Affinity :",style: TextStyle(
                        fontSize: 14 ,
                        color: Colors.grey
                    ),), SizedBox(
                      width: 20,
                    ),
                    Text("${listOfElements.getValencyOfAtom(index)}",style: TextStyle(
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


                // Oxidation State
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
                    Text("${listOfElements.getElectronAffinity(index)}",style: TextStyle(
                        fontSize: 20 ,
                        color: Colors.white
                    ),),
                  ],
                ) ,



                RaisedButton(

                  padding: EdgeInsets.only(left: screenWidth*0.1,right: screenWidth* 0.1),
                  child: Text("SHOW MORE DETAILS",style: TextStyle(color: Colors.white,fontSize: screenHeight* 0.02),),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),

                  onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder:
                (context) => DetailedPage(index + 1),
               ));
               },),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_arrow_down_sharp,color: Colors.red,size: 40,),
                    Text("Swipe for next",style: TextStyle(color: Colors.white,fontSize: 16),),
                  ],
                )

              ],
            ),
          );
        },
    ),
      ),

    );
  }
}
