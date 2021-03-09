import 'package:flutter/material.dart';

class GridViewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: ListView(
          scrollDirection: Axis.horizontal,
            children:[Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top :40.0),
              ),
              Row1(),
              Row2(),
              Row3()
            ],
          )],
        )
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("H",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
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
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        EmptyBox(),
        Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("He",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
          ],
        )
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
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Li",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Be",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
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
        Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("B",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("C",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("N",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("O",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("F",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Ne",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
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
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Na",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Mg",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
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
        Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Al",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Si",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("P",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("S",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Cl",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Ar",style: TextStyle(
                  color: Colors.white,),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 60,
              width: 60,
            ),
          ],
        )
      ],
    );
  }
}


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
