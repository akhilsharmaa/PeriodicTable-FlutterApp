import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:periodic_table/Backend/ListOfElements.dart';
import 'package:periodic_table/adState.dart';
import 'package:provider/provider.dart';

class ListViewBuilderHomePage extends StatefulWidget {
  @override
  _ListViewBuilderHomePageState createState() => _ListViewBuilderHomePageState();
}

class _ListViewBuilderHomePageState extends State<ListViewBuilderHomePage> {

  BannerAd bannerAd;

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        bannerAd = BannerAd(
          adUnitId: adState.bannerAdUnitId,
          size: AdSize.banner,
          request: AdRequest(),
          listener: adState.adListener,
        )..load();
      });
    });
  }

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
        child: Column(
          children: [
            Expanded(
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
            ),
            if(bannerAd != null )
             Container(
              height: 60,
              child: AdWidget(ad: bannerAd,),
            )
          ],
        ),
      )
    );
  }
}
