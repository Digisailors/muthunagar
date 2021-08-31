import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/screens/dashboard/dashboard.dart';
import 'package:muthunagar/screens/home/home.dart';



class Services extends StatefulWidget {
  const Services({Key key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context,int index){
                return
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Card(
                              color:Color(0xFF178DBC),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(imgList[index].toString(),fit: BoxFit.cover,),
                                ),
                                   customText(Colors.white, 'Water', height * 0.04, FontWeight.bold),
                                  ],
                                )),
                          ),
                        ),
                        // customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),

                      ],
                    ),
                  );
              }),
        ],
      ),
    );
  }
}
