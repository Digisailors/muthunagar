import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/screens/home/home.dart';
import 'package:muthunagar/screens/home/today_deal.dart';


class Offers extends StatefulWidget {
  const Offers({Key key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: ListTile(title: customText(
                  Colors.black, 'Search', height * 0.03, FontWeight.bold),
                trailing: Icon(Icons.search, color: Colors.black,),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(Color(0xFF178DBC), "Today's Deal", height * 0.05, FontWeight.bold),
                InkWell(
                  onTap: (){
                    Get.to(TodayDeal());
                  },
                  child: Card(
                      color: Color(0xFF178DBC),
                      child:  Padding(padding:   const EdgeInsets.all(8.0),
                        child: customText(Colors.white, "VIEW ALL", height * 0.03, FontWeight.bold),)
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context,int index){
                return
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: height * 0.4,
                            width: double.infinity,
                            child: Image.network(imgList[index].toString(),fit: BoxFit.cover,)),
                      ),
                      // customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'Dresses',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(Color(0xFF178DBC), "Today's Ads", height * 0.05, FontWeight.bold),
                // Card(
                //     color: Color(0xFF178DBC),
                //     child:  Padding(padding:   const EdgeInsets.all(8.0),
                //       child: customText(Colors.white, "VIEW ALL", height * 0.03, FontWeight.bold),)
                // ),
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
              itemBuilder: (BuildContext context,int index){
                return
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: height ,
                            width: double.infinity,
                            child: Image.network(imgList[index].toString(),fit: BoxFit.cover,)),
                      ),
                      // customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'Dresses',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
              }),
        ],
      ),
    );
  }
}
