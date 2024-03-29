//Version 2.1.1 + 6 completed.



import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';
import 'package:periodic_table/screens/DetailedPage.dart';

class GridViewHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;

    screenHeight = screenHeight * 0.7;

    return Scaffold(

      body: Container(
          color: const Color(0xFF161616),
        // color: Colors.greenAccent,
          child: ListView(
          scrollDirection: Axis.horizontal,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ColumnSeries(),
                    Row1(),
                    Row2(),
                    Row3(),
                    Row4(),
                    Row5(),
                    Row6(),
                    Row7(),
                    SubShell_SPD(),
                    Padding(padding: EdgeInsets.only(top: 50)),
                    BlockF(),
                    Padding(padding: EdgeInsets.only(top: 120)),
                  ],
                ),
              ),

            ],
        )
      ),
    );
  }
}

class ElementBlock extends StatelessWidget {


  // Alert Dialog
  createAlertDialog(BuildContext context){
    ListOfElements listOfElements = new ListOfElements();
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return showDialog(context: context,
      useSafeArea: true,
      builder: (context){
      return Center(
        child: Container(
          width: screenWidth * 0.85,
          height: screenWidth ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(

                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: screenHeight*0.2,
                  ),

                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:24.0),
                          child: Text("${listOfElements.getElementNumber(elementNumber-1)}",style: GoogleFonts.alegreya(fontSize: screenHeight* 0.03,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0),
                          child: Text("${listOfElements.getElementSymbol(elementNumber-1)}",style: TextStyle(fontSize: screenHeight* 0.05,color: Colors.orange.shade400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0,bottom: 5),
                          child: Text("${listOfElements.getElementFullName(elementNumber-1)}",style: TextStyle(fontSize: screenHeight * 0.02,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:35.0,bottom: 10),
                          child: Text("${listOfElements.getElementAtomicMass(elementNumber-1)}",style: TextStyle(fontSize: screenHeight * 0.015,color: Colors.white60),),
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
              // Electron Proton and Neutron
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.black38,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("${listOfElements.getNumberOfElectrons(elementNumber-1)}",style: TextStyle(
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
                            Text("${listOfElements.getNumberOfProtons(elementNumber-1)}",style: TextStyle(
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
                            Text("${listOfElements.getNumberOfNeutron(elementNumber-1)}",style: TextStyle(
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
                  Text("${listOfElements.getElementElectronConfiguration(elementNumber-1)}",style: TextStyle(
                      fontSize: screenHeight*0.015,
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
                      fontSize: 10 ,
                      color: Colors.grey
                  ),), SizedBox(
                    width: 20,
                  ),
                  Text("${listOfElements.getYearOfDiscovery(elementNumber-1)}",style: TextStyle(
                      fontSize: 20 ,
                      color: Colors.white
                  ),),
                ],
              ),


            ],
          ),
          decoration: BoxDecoration(
              color: Colors.red.shade800,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight:  Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight:  Radius.circular(20),)
          ),
        ),
      );
      }
    );
  }

  var elementNumber = 0;
  ElementBlock(this.elementNumber);


  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    screenHeight = screenHeight * 0.8;
    String elementSymbol = ListOfElements().getElementSymbol(elementNumber-1);
    String elementFullName = ListOfElements().getElementFullName(elementNumber-1);
    int getElementNumber = ListOfElements().getElementNumber(elementNumber-1);

    return InkWell(



      onLongPress: (){
        createAlertDialog(context);
      },

      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:
        (context) => DetailedPage(elementNumber),
        ));
      },
      child: Container(
        // height: screenHeight*0.085,

        // width:  screenWidth*0.147,
        height: 50,
        width: 60,
        alignment: Alignment.center,
        child: Column(
          // height: 60,
          // width: 60,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$getElementNumber",style: GoogleFonts.alata(
              fontSize: 10,
              color: Colors.white,),),
            Text("$elementSymbol",style: GoogleFonts.alike(
              fontSize: 16,
              color: Colors.white,),),
            Text("$elementFullName",style: GoogleFonts.amiko(
              fontSize: 7,
              color: Colors.grey.shade100,),),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.black,

          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1),
              bottomRight:  Radius.circular(1),
              topLeft: Radius.circular(1),
              topRight:  Radius.circular(1),)
        ),
      ),
    );
  }
}

//Verticle
class ColumnNumber extends StatelessWidget {

  int coloumNumber;
  ColumnNumber(this.coloumNumber);

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;


    return Container(
      alignment: Alignment.center,
      child: Text("$coloumNumber",style: TextStyle(
        fontSize: 12,
        color: Colors.white,),),

      decoration: BoxDecoration(
          color: Colors.red.shade600
      ),
      // height: screenHeight*0.025,
      // width:  screenWidth*0.147,

      height: 20,
      width: 60,
    );
  }
}

//Horizontal
class RowNumber extends StatelessWidget {

  var rowNumber;
  RowNumber(this.rowNumber);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    screenHeight = screenHeight * 0.8;

    return Container(
      alignment: Alignment.center,
      child: Text("$rowNumber",style: TextStyle(
        fontSize: 16,
        color: Colors.white,),),

      decoration: BoxDecoration(
          color: Colors.red.shade600
      ),
      // height: screenHeight*0.085,
      // width:  screenWidth*0.05,
      width: 20,
      height: 50,

    );
  }
}


// EMPTY BOX
class EmptyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
      ),
      // height: screenHeight*0.025,
      // width:  screenWidth*0.147,

      height: 50,
      width: 60 ,

    );
  }
}


class SubShell_SPD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4),
                color: Colors.white,
                height: 3,
                width: 140,
              ),
              Text("Block - S",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4),
                color: Colors.red,
                height: 3,
                width: 600,
              ),
              Text("Block - D",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.red),),
            ],
          ),  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4),
                color: Colors.white,
                  height: 3,
                  width: 360,
              ),
              Text("Block - P",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),

          // Container(
          //   color: Colors.red.shade900,
          //   height: 10,
          //   width: 600,
          //   child: Text("Block - S",style: TextStyle(fontSize: 9,color: Colors.white,fontWeight: FontWeight.bold),),
          //   alignment: Alignment.center,
          // ),    Container(
          //   color: Colors.white,
          //   height: 10,
          //   width: 360,
          //   child: Text("Block - S",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
          //   alignment: Alignment.center,
          // ),


        ],
      ),
    );
  }
}




class ColumnSeries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
      // height: screenHeight*0.025,
      // width:  screenWidth*0.05,
          height: 20,
          width: 20,

        decoration: BoxDecoration(

          color: Colors.red.shade600
        ),),
        ColumnNumber(1),
        ColumnNumber(2),
        ColumnNumber(3),
        ColumnNumber(4),
        ColumnNumber(5),
        ColumnNumber(6),
        ColumnNumber(7),
        ColumnNumber(8),
        ColumnNumber(9),
        ColumnNumber(10),
        ColumnNumber(11),
        ColumnNumber(12),
        ColumnNumber(13),
        ColumnNumber(14),
        ColumnNumber(15),
        ColumnNumber(16),
        ColumnNumber(17),
        ColumnNumber(18),
      ],
    );
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(1),
        ElementBlock(1),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        ElementBlock(2),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(2),
        Row(
          children: [
            ElementBlock(3),
            ElementBlock(4),
          ],
        ),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        Row(
          children: [
            ElementBlock(5),
            ElementBlock(6),
            ElementBlock(7),
            ElementBlock(8),
            ElementBlock(9),
            ElementBlock(10),
          ],
        )
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(3),
        Row(
          children: [
            ElementBlock(11),
            ElementBlock(12)
          ],
        ),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        Row(
          children: [
            ElementBlock(13),
            ElementBlock(14),
            ElementBlock(15),
            ElementBlock(16),
            ElementBlock(17),
            ElementBlock(18),
          ],
        )
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(4),
        ElementBlock(19),
        ElementBlock(20),
        ElementBlock(21),
        ElementBlock(22),
        ElementBlock(23),
        ElementBlock(24),
        ElementBlock(25),
        ElementBlock(26),
        ElementBlock(27),
        ElementBlock(28),
        ElementBlock(29),
        ElementBlock(30),
        ElementBlock(31),
        ElementBlock(32),
        ElementBlock(33),
        ElementBlock(34),
        ElementBlock(35),
        ElementBlock(36),
      ],
    );
  }
}

class Row5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(5),
        ElementBlock(37),
        ElementBlock(38),
        ElementBlock(39),
        ElementBlock(40),
        ElementBlock(41),
        ElementBlock(42),
        ElementBlock(43),
        ElementBlock(44),
        ElementBlock(45),
        ElementBlock(46),
        ElementBlock(47),
        ElementBlock(48),
        ElementBlock(49),
        ElementBlock(50),
        ElementBlock(51),
        ElementBlock(52),
        ElementBlock(53),
        ElementBlock(54),
      ],
    );
  }
}

class Row6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(6),
        ElementBlock(55),
        ElementBlock(56),
        ElementBlock(57),
        ElementBlock(72),
        ElementBlock(73),
        ElementBlock(74),
        ElementBlock(75),
        ElementBlock(76),
        ElementBlock(77),
        ElementBlock(78),
        ElementBlock(79),
        ElementBlock(80),
        ElementBlock(81),
        ElementBlock(82),
        ElementBlock(83),
        ElementBlock(84),
        ElementBlock(85),
        ElementBlock(86),
      ],
    );
  }
}

class Row7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowNumber(7),
        ElementBlock(87),
        ElementBlock(88),
        ElementBlock(89),
        ElementBlock(104),
        ElementBlock(105),
        ElementBlock(106),
        ElementBlock(107),
        ElementBlock(108),
        ElementBlock(109),
        ElementBlock(110),
        ElementBlock(111),
        ElementBlock(112),
        ElementBlock(113),
        ElementBlock(114),
        ElementBlock(115),
        ElementBlock(116),
        ElementBlock(117),
        ElementBlock(118),
      ],
    );
  }
}



class BlockF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Block - F",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 3,),
        Container(
          margin: EdgeInsets.only(bottom: 4),
          color: Colors.white,
          height: 3,
          width: 840,
        ),
        Row(
          children: [
            ElementBlock(58),
            ElementBlock(59),
            ElementBlock(60),
            ElementBlock(61),
            ElementBlock(62),
            ElementBlock(63),
            ElementBlock(64),
            ElementBlock(65),
            ElementBlock(66),
            ElementBlock(67),
            ElementBlock(68),
            ElementBlock(69),
            ElementBlock(70),
            ElementBlock(71),
          ],
        ),
        Row( children:[
          ElementBlock(90),
          ElementBlock(91),
          ElementBlock(92),
          ElementBlock(93),
          ElementBlock(94),
          ElementBlock(95),
          ElementBlock(96),
          ElementBlock(97),
          ElementBlock(98),
          ElementBlock(99),
          ElementBlock(100),
          ElementBlock(101),
          ElementBlock(102),
          ElementBlock(103),
        ])
      ],
    );
  }
}


