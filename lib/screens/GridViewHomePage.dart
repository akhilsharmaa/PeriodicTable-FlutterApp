import 'package:flutter/material.dart';

class GridViewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Periodic Table"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: ListView(
          scrollDirection: Axis.horizontal,
            children:[Column(
            children: [
              ColumnSeries(),
              Padding(
                padding: const EdgeInsets.only(top :40.0),
              ),
              Row1(),
              Row2(),
              Row3(),
              Row4(),
              Row5(),
              Row6(),
              Row7(),
              Padding(
                padding: const EdgeInsets.only(top :40.0),
              ),
              BlockF()
            ],
          )],
        )
      ),
    );
  }
}

class ElementBlock extends StatelessWidget {

  String elementName;
  ElementBlock(this.elementName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("$elementName",style: TextStyle(
          color: Colors.white,),),
      ),
      decoration: BoxDecoration(
          color: Colors.black,

        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(1),
            bottomRight:  Radius.circular(1),
            topLeft: Radius.circular(1),
            topRight:  Radius.circular(1),)
      ),
      height: 60,
      width: 60,
    );
  }
}


class ColumnNumber extends StatelessWidget {

  int coloumNumber;
  ColumnNumber(this.coloumNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("$coloumNumber",style: TextStyle(
          fontSize: 16,
          color: Colors.white,),),
      ),

      decoration: BoxDecoration(
          color: Colors.red
      ),
      height: 30,
      width: 60,
    );
  }
}

// EMPTY BOX
class EmptyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
      ),
      height: 60,
      width: 60,
    );
  }
}

class ColumnSeries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
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
        ElementBlock("H"),
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
        ElementBlock("He"),
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
        Row(
          children: [
            ElementBlock("Li"),
            ElementBlock("Be"),
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
            ElementBlock("B"),
            ElementBlock("C"),
            ElementBlock("N"),
            ElementBlock("O"),
            ElementBlock("F"),
            ElementBlock("Ne"),
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
        Row(
          children: [
            ElementBlock("Na"),
            ElementBlock("Mg")
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
            ElementBlock("Al"),
            ElementBlock("Si"),
            ElementBlock("P"),
            ElementBlock("S"),
            ElementBlock("Cl"),
            ElementBlock("Ar"),
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
        ElementBlock("K"),
        ElementBlock("Ca"),
        ElementBlock("Sc"),
        ElementBlock("Ti"),
        ElementBlock("V"),
        ElementBlock("Cr"),
        ElementBlock("Mn"),
        ElementBlock("Fe"),
        ElementBlock("Co"),
        ElementBlock("Ni"),
        ElementBlock("Cu"),
        ElementBlock("Zn"),
        ElementBlock("Ga"),
        ElementBlock("Ge"),
        ElementBlock("As"),
        ElementBlock("Se"),
        ElementBlock("Br"),
        ElementBlock("Kr"),
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
        ElementBlock("Rb"),
        ElementBlock("Sr"),
        ElementBlock("Y"),
        ElementBlock("Zr"),
        ElementBlock("Nb"),
        ElementBlock("Mo"),
        ElementBlock("Tc"),
        ElementBlock("Ru"),
        ElementBlock("Rh"),
        ElementBlock("Rn"),
        ElementBlock("Pd"),
        ElementBlock("Ag"),
        ElementBlock("Cd"),
        ElementBlock("In"),
        ElementBlock("Sn"),
        ElementBlock("Sb"),
        ElementBlock("Te"),
        ElementBlock("I"),
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
        ElementBlock("Cs"),
        ElementBlock("Ba"),
        ElementBlock("La"),
        ElementBlock("Hf"),
        ElementBlock("Ta"),
        ElementBlock("W"),
        ElementBlock("Re"),
        ElementBlock("Os"),
        ElementBlock("Ir"),
        ElementBlock("Pt"),
        ElementBlock("Au"),
        ElementBlock("Hg"),
        ElementBlock("Tl"),
        ElementBlock("Pb"),
        ElementBlock("Bi"),
        ElementBlock("Po"),
        ElementBlock("At"),
        ElementBlock("Rn"),
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
        ElementBlock("Fr"),
        ElementBlock("Ra"),
        ElementBlock("Ac"),
        ElementBlock("Rf"),
        ElementBlock("Db"),
        ElementBlock("Sg"),
        ElementBlock("Bh"),
        ElementBlock("Hs"),
        ElementBlock("Mt"),
        ElementBlock("Uun"),
        ElementBlock("Uuu"),
        ElementBlock("Uub"),
        ElementBlock(" "),
        ElementBlock("Uuq"),
        ElementBlock(" "),
        ElementBlock("Uuh"),
        ElementBlock(" "),
        ElementBlock(" "),
      ],
    );
  }
}


class BlockF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElementBlock("Ce"),
            ElementBlock("Pr"),
            ElementBlock("Nd"),
            ElementBlock("Pm"),
            ElementBlock("Sm"),
            ElementBlock("Sm"),
            ElementBlock("Eu"),
            ElementBlock("Gd"),
            ElementBlock("Tb"),
            ElementBlock("Dy"),
            ElementBlock("Ho"),
            ElementBlock("Er"),
            ElementBlock("Tm"),
            ElementBlock("Yb"),
            ElementBlock("Lu"),
          ],
        ),
        Row( children:[
          ElementBlock("Ce"),
          ElementBlock("Pr"),
          ElementBlock("Nd"),
          ElementBlock("Pm"),
          ElementBlock("Sm"),
          ElementBlock("Sm"),
          ElementBlock("Eu"),
          ElementBlock("Gd"),
          ElementBlock("Tb"),
          ElementBlock("Dy"),
          ElementBlock("Ho"),
          ElementBlock("Er"),
          ElementBlock("Tm"),
          ElementBlock("Yb"),
          ElementBlock("Lu"),
        ])
      ],
    );
  }
}


