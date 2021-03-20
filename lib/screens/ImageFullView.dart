import 'package:flutter/material.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';


class ImageFullView extends StatelessWidget {


  var elementNumber = 0;
  ImageFullView(this.elementNumber);


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;


    int getElementNumber(){ return elementNumber-1;}
    ListOfElements listOfElements = new ListOfElements();

    return Scaffold(
      backgroundColor: Colors.black,
      body:   Center(
        child: Container(
          height: screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(

                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: NetworkImage("${listOfElements.getElementImageLink(elementNumber)}")
              )
          ),
        ),
      ),
    );
  }
}
