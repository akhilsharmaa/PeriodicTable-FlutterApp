import 'package:flutter/material.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';

class ListViewBuilderHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ListOfElements listOfElements  = ListOfElements();

    return Scaffold(
      appBar: AppBar(
        title: Text("Periodic list"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: listOfElements.elementList.length-=2,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(top : 15,bottom: 15 , left: 15),
              child: Column(
                children: [
                  Row(
                    children: [

                      Container(

                        width: 70,
                        child: Text("$index",style: TextStyle(fontSize:20 ,color: Colors.white),)),
                      // SizedBox(width: 20,),

                      Container(
                        width: 70,
                          child: Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(fontSize: 24 ,color: Colors.yellow),)),
                      // SizedBox(width: 20,),
                      Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,),
                    color: Colors.grey.shade700,
                    height: 0.3,
                  )
                ],
              ),
            );
          },
        ),
      )
    );
  }
}
