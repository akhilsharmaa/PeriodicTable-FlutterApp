//Version 1.2.0 +3 completed.



import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';
import 'package:periodic_table/adState.dart';
import 'package:provider/provider.dart';

import 'DetailedPage.dart';

class ListViewBuilderHomePage extends StatefulWidget {
  @override
  _ListViewBuilderHomePageState createState() => _ListViewBuilderHomePageState();
}

class _ListViewBuilderHomePageState extends State<ListViewBuilderHomePage> {
  //
  // BannerAd bannerAd;
  //
  // @override
  // void didChangeDependencies(){
  //   super.didChangeDependencies();
  //   final adState = Provider.of<AdState>(context);
  //   adState.initialization.then((status) {
  //     setState(() {
  //       bannerAd = BannerAd(
  //         adUnitId: adState.bannerAdUnitId,
  //         size: AdSize.banner,
  //         request: AdRequest(),
  //         listener: adState.adListener,
  //       )..load();
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    ListOfElements listOfElements  = ListOfElements();

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listOfElements.elementList.length-1,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:
                        (context) => DetailedPage(index + 1),
                    ));
                  },
                    child: Column(
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${listOfElements.getElementNumber(index)}",style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,),),
                                    Text("${listOfElements.getElementSymbol(index)}",style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 24
                                    ),),
                                  ],
                                ),


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
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text("${listOfElements.getElementFullName(index)}",style: TextStyle(fontSize: 18,color: Colors.white),),
                                  Text("${listOfElements.getElementAtomicMass(index)}",style: TextStyle(fontSize:12,color: Colors.white60),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey.shade700,
                          height: 0.3,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            // if(bannerAd != null )
            //  Container(
            //   height: 60,
            //   child: AdWidget(ad: bannerAd,),
            // )
          ],
        ),
      )
    );
  }
}
