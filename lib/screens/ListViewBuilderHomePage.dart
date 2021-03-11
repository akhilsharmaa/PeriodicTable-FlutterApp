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
          itemCount: listOfElements.elementList.length-1,
          itemBuilder: (context, index){
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5,top: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),



                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${listOfElements.getElementNumber(index)}",style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey,),),
                            Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(
                              color: Colors.white,),),
                            Text("${listOfElements.getElementFullName(index)}",style: TextStyle(
                              fontSize: 9,
                              color: Colors.grey,),),
                          ],
                        ),

                      // Leading Icon
                      // Container(
                      //   decoration: BoxDecoration(
                      //       border: Border.all(
                      //         color: Colors.red,
                      //         width: 0.5
                      //       )
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(4),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //
                      //       //
                      //       Text("$index",style: TextStyle(fontSize:14 ,color: Colors.white),),
                      //         Padding(
                      //           padding: const EdgeInsets.only(right: 10,left: 10),
                      //           child: Container(
                      //             height: 40,
                      //
                      //             //Text List of Elements
                      //             width: 40, child: Text("${listOfElements.getElementSymbol(index)}",
                      //             style: TextStyle(fontSize: 24 ,color: Colors.yellow),)),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                        decoration: BoxDecoration(
                            color: Colors.black,
                          border: Border.all(
                                    color: Colors.white10,
                                    width: 0.5
                                  ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(1),
                              bottomRight:  Radius.circular(1),
                              topLeft: Radius.circular(1),
                              topRight:  Radius.circular(1),)
                        ),
                        height: 60,
                        width: 60,
                      )

                      ,

                      SizedBox(width: 20,),

                      // Full Name
                      Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.shade700,
                  height: 0.3,
                )
              ],
            );
          },
        ),
      )
    );
  }
}
