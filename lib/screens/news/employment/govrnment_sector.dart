import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';

import '../../dashboard/dashboard.dart';

class GovernmentSector extends StatefulWidget {
  const GovernmentSector({Key key}) : super(key: key);

  @override
  _GovernmentSectorState createState() => _GovernmentSectorState();
}

class _GovernmentSectorState extends State<GovernmentSector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF178DBC),
        leading: IconButton(onPressed: (){
          dashboardController.selectedIndex.value = 2;
          newsController.selectedIndex.value = 0;
          Get.to(Dashboard());
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Center(child: Text("Government Jobs",style: TextStyle(color: Colors.white,),),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,),),
        ],
      ),
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
          ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context,int index){
                return
                  Column(
                    children: [
                      ListTile(
                        leading: Image.asset('assets/images/beauty.png',scale: 1,),
                        title: customText(Colors.black, ' Available Government Jobs', height * 0.05, FontWeight.bold),
                        subtitle:  customText(Colors.grey, 'check the link below for more details', height * 0.03, FontWeight.normal),
                      ),
                    ],
                  );

              }),
        ],
      ),
    );
  }
}
