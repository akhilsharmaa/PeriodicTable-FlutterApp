import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          Card(
            color: Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network("https://image.jimcdn.com/app/cms/image/transf/none/path/s21cd3466457ea560/image/ic0391f2e86eeac54/version/1601977690/image.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Calcium",style: TextStyle(
                    color: Colors.white,
                    fontSize: 32
                  ),),
                )
              ],
            ),
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
                          Text("20",style: TextStyle(
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
                  color: Colors.white
              ),),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 20,bottom: 10),
            color: Colors.greenAccent,
            height: 0.5,
          ), //


          // Atomic Number
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
          ElementsListTileListView("Van der waals radius", "231 (pm)"),
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
