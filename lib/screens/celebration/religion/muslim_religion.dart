import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/screens/dashboard/dashboard.dart';

class MuslimReligion extends StatefulWidget {
  const MuslimReligion({Key key}) : super(key: key);

  @override
  _MuslimReligionState createState() => _MuslimReligionState();
}

class _MuslimReligionState extends State<MuslimReligion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF178DBC),
        leading: IconButton(onPressed: (){
          dashboardController.selectedIndex.value = 1;
          celebrationController.selectedIndex.value = 0;
          Get.to(Dashboard());
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Center(child: Text("Muslim Functions",style: TextStyle(color: Colors.white,),),),
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
                        leading: Image.asset('assets/images/beauty.png'),
                        title: customText(Colors.black, 'Pallivasal Mosque Function', height * 0.05, FontWeight.bold),
                        subtitle:  customText(Colors.grey, '26-07-2021/12:00PM', height * 0.03, FontWeight.normal),
                      ),
                    ],
                  );

              }),
        ],
      ),
    );
  }
}
