import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';


class PageViewBuilderHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
                      height: 220,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstIn),
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
                          child: Text("${listOfElements.getElementNumber(index)}",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0),
                          child: Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(fontSize: 50,color: Colors.orange),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0,bottom: 5),
                          child: Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:35.0,bottom: 10),
                          child: Text("${listOfElements.getElementAtomicMass(index)}",style: TextStyle(fontSize: 20,color: Colors.white60),),
                        ),
                      ],
                    )
                  ],),




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
                                Text("${listOfElements.getNumberOfElectrons(index)}",style: TextStyle(
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
                                Text("${listOfElements.getNumberOfProtons(index)}",style: TextStyle(
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
                                Text("${listOfElements.getNumberOfNeutron(index)}",style: TextStyle(
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





                // Discovery By
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.list,color: Colors.orange,),
                    SizedBox(width: 10),
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
                  color: Colors.greenAccent,
                  height: 0.5,
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
                  color: Colors.blue,
                  height: 0.5,
                ), // Divider



                // Electronic Configuration
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
                  color: Colors.blue,
                  height: 0.5,
                ), // Divider


              ],
            ),
          );
        },
    ),
      ),

    );
  }
}
