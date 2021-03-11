import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';


class PageViewBuilderHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ListOfElements listOfElements  = ListOfElements();


    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
      itemBuilder: (context, index){
        return Container(
          color: Colors.black87,
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
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
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
                        padding: const EdgeInsets.only(left:18.0),
                        child: Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(fontSize: 50,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: 32,color: Colors.white),),
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







            ],
          ),
        );
      },
    ),

    );
  }
}
